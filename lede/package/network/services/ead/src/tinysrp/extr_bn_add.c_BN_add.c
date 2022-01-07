
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int neg; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_uadd (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ BN_ucmp (TYPE_1__ const*,TYPE_1__ const*) ;
 int BN_usub (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;
 int bn_check_top (TYPE_1__ const*) ;

int BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
 {
 const BIGNUM *tmp;

 bn_check_top(a);
 bn_check_top(b);






 if (a->neg ^ b->neg)
  {

  if (a->neg)
   { tmp=a; a=b; b=tmp; }



  if (BN_ucmp(a,b) < 0)
   {
   if (!BN_usub(r,b,a)) return(0);
   r->neg=1;
   }
  else
   {
   if (!BN_usub(r,a,b)) return(0);
   r->neg=0;
   }
  return(1);
  }

 if (a->neg)
  r->neg=1;
 else
  r->neg=0;

 if (!BN_uadd(r,a,b)) return(0);
 return(1);
 }
