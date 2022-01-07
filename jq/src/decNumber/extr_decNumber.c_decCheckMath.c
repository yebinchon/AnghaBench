
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_6__ {int digits; int exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_7__ {int digits; int emax; int emin; } ;
typedef TYPE_2__ decContext ;


 int DEC_Invalid_context ;
 int DEC_Invalid_operation ;
 int DEC_MAX_MATH ;
 int ISZERO (TYPE_1__ const*) ;

__attribute__((used)) static uInt decCheckMath(const decNumber *rhs, decContext *set,
                         uInt *status) {
  uInt save=*status;
  if (set->digits>DEC_MAX_MATH
   || set->emax>DEC_MAX_MATH
   || -set->emin>DEC_MAX_MATH) *status|=DEC_Invalid_context;
   else if ((rhs->digits>DEC_MAX_MATH
     || rhs->exponent+rhs->digits>DEC_MAX_MATH+1
     || rhs->exponent+rhs->digits<2*(1-DEC_MAX_MATH))
     && !ISZERO(rhs)) *status|=DEC_Invalid_operation;
  return (*status!=save);
  }
