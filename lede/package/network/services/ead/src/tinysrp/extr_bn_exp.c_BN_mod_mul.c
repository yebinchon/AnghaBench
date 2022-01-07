
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_mod (int const*,int const*,int const*,int *) ;
 int BN_mul (int const*,int const*,int const*,int *) ;
 int BN_sqr (int const*,int const*,int *) ;
 int bn_check_top (int const*) ;

int BN_mod_mul(BIGNUM *ret, BIGNUM *a, BIGNUM *b, const BIGNUM *m, BN_CTX *ctx)
 {
 BIGNUM *t;
 int r=0;

 bn_check_top(a);
 bn_check_top(b);
 bn_check_top(m);

 BN_CTX_start(ctx);
 if ((t = BN_CTX_get(ctx)) == ((void*)0)) goto err;
 if (a == b)
  { if (!BN_sqr(t,a,ctx)) goto err; }
 else
  { if (!BN_mul(t,a,b,ctx)) goto err; }
 if (!BN_mod(ret,t,m,ctx)) goto err;
 r=1;
err:
 BN_CTX_end(ctx);
 return(r);
 }
