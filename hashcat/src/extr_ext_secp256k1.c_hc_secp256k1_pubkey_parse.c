
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int secp256k1_pubkey ;
typedef int secp256k1_context ;


 int SECP256K1_CONTEXT_NONE ;
 int * secp256k1_context_create (int ) ;
 int secp256k1_context_destroy (int *) ;
 scalar_t__ secp256k1_ec_pubkey_parse (int *,int *,int *,size_t) ;

bool hc_secp256k1_pubkey_parse (secp256k1_pubkey *pubkey, u8 *buf, size_t length)
{
  secp256k1_context *t_ctx = secp256k1_context_create (SECP256K1_CONTEXT_NONE);

  if (secp256k1_ec_pubkey_parse (t_ctx, pubkey, buf, length) == 0)
  {
    secp256k1_context_destroy (t_ctx);

    return 0;
  }

  secp256k1_context_destroy (t_ctx);

  return 1;
}
