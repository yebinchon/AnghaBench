
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int top; int * d; } ;
typedef int BN_ULONG ;
typedef int BN_CTX ;
typedef TYPE_1__ const BIGNUM ;


 scalar_t__ BN_is_odd (TYPE_1__ const*) ;
 int BN_mod_exp_mont (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 int BN_mod_exp_mont_word (TYPE_1__ const*,int ,TYPE_1__ const*,TYPE_1__ const*,int *,int *) ;
 int BN_mod_exp_recp (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int BN_mod_exp_simple (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int bn_check_top (TYPE_1__ const*) ;

int BN_mod_exp(BIGNUM *r, BIGNUM *a, const BIGNUM *p, const BIGNUM *m,
        BN_CTX *ctx)
 {
 int ret;

 bn_check_top(a);
 bn_check_top(p);
 bn_check_top(m);
  { ret=BN_mod_exp_simple(r,a,p,m,ctx); }


 return(ret);
 }
