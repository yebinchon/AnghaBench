
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int top; scalar_t__* d; scalar_t__ neg; } ;
typedef scalar_t__ BN_ULONG ;
typedef int BN_CTX ;
typedef TYPE_1__ BIGNUM ;


 int BN_CTX_end (int *) ;
 TYPE_1__* BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_copy (TYPE_1__*,TYPE_1__*) ;
 int bn_check_top (TYPE_1__*) ;
 int bn_sqr_comba4 (scalar_t__*,scalar_t__*) ;
 int bn_sqr_comba8 (scalar_t__*,scalar_t__*) ;
 int bn_sqr_normal (scalar_t__*,scalar_t__*,int,scalar_t__*) ;
 int * bn_wexpand (TYPE_1__*,int) ;
 int printf (char*,int,int) ;

int BN_sqr(BIGNUM *r, BIGNUM *a, BN_CTX *ctx)
 {
 int max,al;
 int ret = 0;
 BIGNUM *tmp,*rr;




 bn_check_top(a);

 al=a->top;
 if (al <= 0)
  {
  r->top=0;
  return(1);
  }

 BN_CTX_start(ctx);
 rr=(a != r) ? r : BN_CTX_get(ctx);
 tmp=BN_CTX_get(ctx);
 if (tmp == ((void*)0)) goto err;

 max=(al+al);
 if (bn_wexpand(rr,max+1) == ((void*)0)) goto err;

 r->neg=0;
 if (al == 4)
  {

  BN_ULONG t[8];
  bn_sqr_normal(rr->d,a->d,4,t);



  }
 else if (al == 8)
  {

  BN_ULONG t[16];
  bn_sqr_normal(rr->d,a->d,8,t);



  }
 else
  {
  if (bn_wexpand(tmp,max) == ((void*)0)) goto err;
  bn_sqr_normal(rr->d,a->d,al,tmp->d);
  }

 rr->top=max;
 if ((max > 0) && (rr->d[max-1] == 0)) rr->top--;
 if (rr != r) BN_copy(r,rr);
 ret = 1;
 err:
 BN_CTX_end(ctx);
 return(ret);
 }
