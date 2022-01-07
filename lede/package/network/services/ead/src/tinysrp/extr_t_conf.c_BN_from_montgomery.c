
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_26__ {int* d; int top; int neg; } ;
struct TYPE_25__ {int ri; int n0; TYPE_2__ N; TYPE_2__ Ni; } ;
typedef int BN_ULONG ;
typedef TYPE_1__ BN_MONT_CTX ;
typedef int BN_CTX ;
typedef TYPE_2__ BIGNUM ;


 int BN_BITS2 ;
 int BN_CTX_end (int *) ;
 TYPE_2__* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 long long BN_MASK2 ;
 int BN_add (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int BN_copy (TYPE_2__*,TYPE_2__*) ;
 int BN_mask_bits (TYPE_2__*,int) ;
 int BN_mul (TYPE_2__*,TYPE_2__*,TYPE_2__*,int *) ;
 int BN_rshift (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ BN_ucmp (TYPE_2__*,TYPE_2__*) ;
 int BN_usub (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int bn_fix_top (TYPE_2__*) ;
 int bn_mul_add_words (int*,int*,int,int) ;
 int * bn_wexpand (TYPE_2__*,int) ;
 int memset (int*,int ,int) ;
 int printf (char*,int,int) ;

int BN_from_montgomery(BIGNUM *ret, BIGNUM *a, BN_MONT_CTX *mont,
      BN_CTX *ctx)
 {
 int retn=0;
 BIGNUM *t1,*t2;

 BN_CTX_start(ctx);
 t1 = BN_CTX_get(ctx);
 t2 = BN_CTX_get(ctx);
 if (t1 == ((void*)0) || t2 == ((void*)0)) goto err;

 if (!BN_copy(t1,a)) goto err;
 BN_mask_bits(t1,mont->ri);

 if (!BN_mul(t2,t1,&mont->Ni,ctx)) goto err;
 BN_mask_bits(t2,mont->ri);

 if (!BN_mul(t1,t2,&mont->N,ctx)) goto err;
 if (!BN_add(t2,a,t1)) goto err;
 BN_rshift(ret,t2,mont->ri);


 if (BN_ucmp(ret, &(mont->N)) >= 0)
  {
  BN_usub(ret,ret,&(mont->N));
  }
 retn=1;
 err:
 BN_CTX_end(ctx);
 return(retn);
 }
