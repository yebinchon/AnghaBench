
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uInt ;
struct TYPE_8__ {int* lsu; size_t digits; scalar_t__ exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_9__ {int round; scalar_t__ emax; scalar_t__ emin; scalar_t__ digits; } ;
typedef TYPE_2__ decContext ;
typedef int Unit ;
typedef scalar_t__ Int ;


 int D2U (int) ;
 size_t DECDPUN ;
 int DECDPUNMAX ;
 size_t DEC_Inexact ;
 size_t DEC_Invalid_context ;
 size_t DEC_Rounded ;
 size_t DEC_Subnormal ;
 size_t DEC_Underflow ;
 int decNumberIsNegative (TYPE_1__*) ;
 int decSetOverflow (TYPE_1__*,TYPE_2__*,size_t*) ;
 int decUnitAddSub (int*,int ,int ,int,int ,int*,scalar_t__) ;
 int* powers ;
 int printf (char*,int) ;
 int uarrone ;

__attribute__((used)) static void decApplyRound(decNumber *dn, decContext *set, Int residue,
                          uInt *status) {
  Int bump;


  if (residue==0) return;

  bump=0;


  switch (set->round) {
    case 135: {





      Int lsd5=*dn->lsu%5;
      if (residue<0 && lsd5!=1) bump=-1;
       else if (residue>0 && lsd5==0) bump=1;

      break;}

    case 133: {

      if (residue<0) bump=-1;
      break;}

    case 131: {
      if (residue>5) bump=1;
      break;}

    case 130: {
      if (residue>5) bump=1;
       else if (residue==5) {

        if (*dn->lsu & 0x01) bump=1;
        }
      break;}

    case 129: {
      if (residue>=5) bump=1;
      break;}

    case 128: {
      if (residue>0) bump=1;
      break;}

    case 134: {


      if (decNumberIsNegative(dn)) {
        if (residue<0) bump=-1;
        }
       else {
        if (residue>0) bump=1;
        }
      break;}

    case 132: {


      if (!decNumberIsNegative(dn)) {
        if (residue<0) bump=-1;
        }
       else {
        if (residue>0) bump=1;
        }
      break;}

    default: {
      *status|=DEC_Invalid_context;



      break;}
    }


  if (bump==0) return;






  if (bump>0) {
    Unit *up;
    uInt count=dn->digits;
    for (up=dn->lsu; ; up++) {
      if (count<=DECDPUN) {

        if (*up!=powers[count]-1) break;

        *up=(Unit)powers[count-1];
        for (up=up-1; up>=dn->lsu; up--) *up=0;
        dn->exponent++;

        if ((dn->exponent+dn->digits)>set->emax+1) {
          decSetOverflow(dn, set, status);
          }
        return;
        }

      if (*up!=DECDPUNMAX) break;
      count-=DECDPUN;
      }
    }
   else {


    Unit *up, *sup;
    uInt count=dn->digits;
    for (up=dn->lsu; ; up++) {
      if (count<=DECDPUN) {

        if (*up!=powers[count-1]) break;

        sup=up;
        *up=(Unit)powers[count]-1;

        for (up=up-1; up>=dn->lsu; up--) *up=(Unit)powers[DECDPUN]-1;
        dn->exponent--;






        if (dn->exponent+1==set->emin-set->digits+1) {
          if (count==1 && dn->digits==1) *sup=0;
           else {
            *sup=(Unit)powers[count-1]-1;
            dn->digits--;
            }
          dn->exponent++;
          *status|=DEC_Underflow | DEC_Subnormal | DEC_Inexact | DEC_Rounded;
          }
        return;
        }


      if (*up!=0) break;
      count-=DECDPUN;
      }

    }


  decUnitAddSub(dn->lsu, D2U(dn->digits), uarrone, 1, 0, dn->lsu, bump);
  }
