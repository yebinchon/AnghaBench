
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int secp256k1_scalar ;
typedef int secp256k1_pubkey ;
typedef int secp256k1_gej ;
struct TYPE_5__ {int x; int y; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_context ;


 int SECP256K1_CONTEXT_NONE ;
 int SECP256K1_CONTEXT_VERIFY ;
 int SECP256K1_EC_COMPRESSED ;
 int * secp256k1_context_create (int ) ;
 int secp256k1_context_destroy (int *) ;
 int secp256k1_ec_pubkey_serialize (int *,int*,size_t*,int *,int ) ;
 scalar_t__ secp256k1_ec_pubkey_tweak_mul (int *,int *,int*) ;
 int secp256k1_ecmult_const (int *,TYPE_1__*,int *,size_t const) ;
 int secp256k1_fe_get_b32 (int*,int *) ;
 int secp256k1_fe_is_odd (int *) ;
 int secp256k1_fe_normalize (int *) ;
 int secp256k1_ge_set_gej (TYPE_1__*,int *) ;
 int secp256k1_pubkey_load (int *,TYPE_1__*,int *) ;
 int secp256k1_scalar_clear (int *) ;
 scalar_t__ secp256k1_scalar_is_zero (int *) ;
 int secp256k1_scalar_set_b32 (int *,int*,int*) ;

bool hc_secp256k1_pubkey_tweak_mul (secp256k1_pubkey *pubkey, u8 *buf, size_t length)
{


  secp256k1_context *sctx = secp256k1_context_create (SECP256K1_CONTEXT_NONE);

  secp256k1_gej res;
  secp256k1_ge pt;



  secp256k1_pubkey_load (sctx, &pt, pubkey);

  int overflow = 0;

  secp256k1_scalar s;

  secp256k1_scalar_set_b32 (&s, buf, &overflow);

  if (overflow != 0)
  {
    secp256k1_scalar_clear (&s);

    secp256k1_context_destroy (sctx);

    return 0;
  }

  if (secp256k1_scalar_is_zero (&s))
  {
    secp256k1_scalar_clear (&s);

    secp256k1_context_destroy (sctx);

    return 0;
  }




  const size_t scalar_size = (length - 1) * 8;

  secp256k1_ecmult_const (&res, &pt, &s, scalar_size);
  secp256k1_ge_set_gej (&pt, &res);
  secp256k1_fe_normalize (&pt.x);
  secp256k1_fe_normalize (&pt.y);




  buf[0] = 0x02 | secp256k1_fe_is_odd (&pt.y);

  secp256k1_fe_get_b32 (buf + 1, &pt.x);




  secp256k1_scalar_clear (&s);

  secp256k1_context_destroy (sctx);
  return 1;
}
