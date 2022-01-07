
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_end (int *) ;
 int const* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_add (int const*,int const*,int const*) ;
 int * BN_copy (int const*,int const*) ;
 int BN_div (int const*,int const*,int const*,int const*,int *) ;
 int BN_free (int const*) ;
 scalar_t__ BN_is_one (int const*) ;
 int BN_is_zero (int const*) ;
 int BN_mod (int const*,int const*,int const*,int *) ;
 int BN_mul (int const*,int const*,int const*,int *) ;
 int const* BN_new () ;
 int BN_one (int const*) ;
 int BN_sub (int const*,int const*,int const*) ;
 int BN_zero (int const*) ;
 int bn_check_top (int const*) ;

BIGNUM *BN_mod_inverse(BIGNUM *in, BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
 {
 BIGNUM *A,*B,*X,*Y,*M,*D,*R=((void*)0);
 BIGNUM *T,*ret=((void*)0);
 int sign;

 bn_check_top(a);
 bn_check_top(n);

 BN_CTX_start(ctx);
 A = BN_CTX_get(ctx);
 B = BN_CTX_get(ctx);
 X = BN_CTX_get(ctx);
 D = BN_CTX_get(ctx);
 M = BN_CTX_get(ctx);
 Y = BN_CTX_get(ctx);
 if (Y == ((void*)0)) goto err;

 if (in == ((void*)0))
  R=BN_new();
 else
  R=in;
 if (R == ((void*)0)) goto err;

 BN_zero(X);
 BN_one(Y);
 if (BN_copy(A,a) == ((void*)0)) goto err;
 if (BN_copy(B,n) == ((void*)0)) goto err;
 sign=1;

 while (!BN_is_zero(B))
  {
  if (!BN_div(D,M,A,B,ctx)) goto err;
  T=A;
  A=B;
  B=M;


  if (!BN_mul(T,D,X,ctx)) goto err;
  if (!BN_add(T,T,Y)) goto err;
  M=Y;
  Y=X;
  X=T;
  sign= -sign;
  }
 if (sign < 0)
  {
  if (!BN_sub(Y,n,Y)) goto err;
  }

 if (BN_is_one(A))
  { if (!BN_mod(R,Y,n,ctx)) goto err; }
 else
  {
  goto err;
  }
 ret=R;
err:
 if ((ret == ((void*)0)) && (in == ((void*)0))) BN_free(R);
 BN_CTX_end(ctx);
 return(ret);
 }
