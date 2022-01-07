
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int decNumber ;
struct TYPE_4__ {int status; scalar_t__ traps; } ;
typedef TYPE_1__ decContext ;


 int DEC_Invalid_operation ;
 int decNumberToIntegralExact (int *,int const*,TYPE_1__*) ;

decNumber * decNumberToIntegralValue(decNumber *res, const decNumber *rhs,
                                     decContext *set) {
  decContext workset=*set;
  workset.traps=0;
  decNumberToIntegralExact(res, rhs, &workset);


  set->status|=workset.status&DEC_Invalid_operation;
  return res;
  }
