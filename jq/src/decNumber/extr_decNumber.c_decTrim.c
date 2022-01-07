
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uInt ;
struct TYPE_8__ {int bits; int* lsu; int exponent; int digits; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_9__ {int emax; int digits; scalar_t__ clamp; } ;
typedef TYPE_2__ decContext ;
typedef size_t Unit ;
typedef int Int ;
typedef int Flag ;


 int D2U (int) ;
 size_t DECDPUN ;
 int DECSPECIAL ;
 int DECUNCONT ;
 int DECUNUSED ;
 scalar_t__ ISZERO (TYPE_1__*) ;
 size_t QUOT10 (size_t,size_t) ;
 scalar_t__ decCheckOperands (TYPE_1__*,int ,int ,int ) ;
 int decShiftToLeast (size_t*,int ,int) ;
 size_t* powers ;

__attribute__((used)) static decNumber * decTrim(decNumber *dn, decContext *set, Flag all,
                           Flag noclamp, Int *dropped) {
  Int d, exp;
  uInt cut;
  Unit *up;





  *dropped=0;
  if ((dn->bits & DECSPECIAL)
    || (*dn->lsu & 0x01)) return dn;
  if (ISZERO(dn)) {
    dn->exponent=0;
    return dn;
    }


  exp=dn->exponent;
  cut=1;
  up=dn->lsu;
  for (d=0; d<dn->digits-1; d++) {


      uInt quot=QUOT10(*up, cut);
      if ((*up-quot*powers[cut])!=0) break;




    if (!all) {

      if (exp<=0) {
        if (exp==0) break;
        exp++;
        }
      }
    cut++;
    if (cut>DECDPUN) {
      up++;
      cut=1;
      }
    }
  if (d==0) return dn;


  if (set->clamp && !noclamp) {
    Int maxd=set->emax-set->digits+1-dn->exponent;
    if (maxd<=0) return dn;
    if (d>maxd) d=maxd;
    }


  decShiftToLeast(dn->lsu, D2U(dn->digits), d);
  dn->exponent+=d;
  dn->digits-=d;
  *dropped=d;
  return dn;
  }
