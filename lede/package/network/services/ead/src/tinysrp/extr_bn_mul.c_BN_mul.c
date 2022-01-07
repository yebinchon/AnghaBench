
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int top; int neg; int d; } ;
typedef int BN_CTX ;
typedef TYPE_1__ BIGNUM ;


 int BN_CTX_end (int *) ;
 TYPE_1__* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_copy (TYPE_1__*,TYPE_1__*) ;
 int BN_zero (TYPE_1__*) ;
 int bn_check_top (TYPE_1__*) ;
 int bn_fix_top (TYPE_1__*) ;
 int bn_mul_comba4 (int ,int ,int ) ;
 int bn_mul_comba8 (int ,int ,int ) ;
 int bn_mul_normal (int ,int ,int,int ,int) ;
 int * bn_wexpand (TYPE_1__*,int) ;
 int printf (char*,int,int) ;

int BN_mul(BIGNUM *r, BIGNUM *a, BIGNUM *b, BN_CTX *ctx)
 {
 int top,al,bl;
 BIGNUM *rr;
 int ret = 0;
 bn_check_top(a);
 bn_check_top(b);
 bn_check_top(r);

 al=a->top;
 bl=b->top;

 if ((al == 0) || (bl == 0))
  {
  BN_zero(r);
  return(1);
  }
 top=al+bl;

 BN_CTX_start(ctx);
 if ((r == a) || (r == b))
  {
  if ((rr = BN_CTX_get(ctx)) == ((void*)0)) goto err;
  }
 else
  rr = r;
 rr->neg=a->neg^b->neg;
 if (bn_wexpand(rr,top) == ((void*)0)) goto err;
 rr->top=top;
 bn_mul_normal(rr->d,a->d,al,b->d,bl);




 bn_fix_top(rr);
 if (r != rr) BN_copy(r,rr);
 ret=1;
err:
 BN_CTX_end(ctx);
 return(ret);
 }
