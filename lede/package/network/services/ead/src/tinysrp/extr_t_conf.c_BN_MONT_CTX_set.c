
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_25__ {int top; int dmax; scalar_t__* d; int neg; } ;
struct TYPE_24__ {int ri; int N; TYPE_2__ const RR; TYPE_2__ const Ni; scalar_t__ n0; } ;
typedef scalar_t__ BN_ULONG ;
typedef TYPE_1__ BN_MONT_CTX ;
typedef int BN_CTX ;
typedef TYPE_2__ const BIGNUM ;


 int BN_BITS2 ;
 int BN_MASK2 ;
 int BN_copy (int *,TYPE_2__ const*) ;
 int BN_div (TYPE_2__ const*,int *,TYPE_2__ const*,TYPE_2__ const*,int *) ;
 int BN_free (TYPE_2__ const*) ;
 int BN_init (TYPE_2__ const*) ;
 int BN_is_zero (TYPE_2__ const*) ;
 int BN_lshift (TYPE_2__ const*,TYPE_2__ const*,int) ;
 int BN_mod (TYPE_2__ const*,TYPE_2__ const*,int *,int *) ;
 int * BN_mod_inverse (TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int *) ;
 int BN_num_bits (TYPE_2__ const*) ;
 int BN_set_bit (TYPE_2__ const*,int) ;
 int BN_set_word (TYPE_2__ const*,int ) ;
 int BN_sub_word (TYPE_2__ const*,int) ;
 int BN_zero (TYPE_2__ const*) ;

int BN_MONT_CTX_set(BN_MONT_CTX *mont, const BIGNUM *mod, BN_CTX *ctx)
 {
 BIGNUM Ri,*R;

 BN_init(&Ri);
 R= &(mont->RR);
 BN_copy(&(mont->N),mod);
  {
  mont->ri=BN_num_bits(mod);
  BN_zero(R);
  BN_set_bit(R,mont->ri);

  if ((BN_mod_inverse(&Ri,R,mod,ctx)) == ((void*)0))
   goto err;
  BN_lshift(&Ri,&Ri,mont->ri);
  BN_sub_word(&Ri,1);

  BN_div(&(mont->Ni),((void*)0),&Ri,mod,ctx);
  BN_free(&Ri);
  }



 BN_zero(&(mont->RR));
 BN_set_bit(&(mont->RR),mont->ri*2);
 BN_mod(&(mont->RR),&(mont->RR),&(mont->N),ctx);

 return(1);
err:
 return(0);
 }
