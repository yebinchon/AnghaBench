
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t digits; size_t exponent; scalar_t__ bits; scalar_t__* lsu; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_6__ {size_t digits; size_t emax; } ;
typedef TYPE_2__ decContext ;
typedef scalar_t__ Unit ;
typedef size_t Int ;


 size_t DECDPUN ;
 scalar_t__ DECDPUNMAX ;
 int* powers ;

__attribute__((used)) static void decSetMaxValue(decNumber *dn, decContext *set) {
  Unit *up;
  Int count=set->digits;
  dn->digits=count;

  for (up=dn->lsu; ; up++) {
    if (count>DECDPUN) *up=DECDPUNMAX;
     else {
      *up=(Unit)(powers[count]-1);
      break;
      }
    count-=DECDPUN;
    }
  dn->bits=0;
  dn->exponent=set->emax-set->digits+1;
  }
