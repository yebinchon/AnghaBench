
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t digits; size_t exponent; size_t* lsu; } ;
typedef TYPE_1__ decNumber ;
typedef size_t Unit ;
typedef size_t Int ;
typedef scalar_t__ Flag ;


 size_t BADINT ;
 size_t BIGEVEN ;
 size_t BIGODD ;
 size_t DECDPUN ;
 scalar_t__ ISZERO (TYPE_1__ const*) ;
 size_t QUOT10 (size_t const,size_t) ;
 scalar_t__ decNumberIsNegative (TYPE_1__ const*) ;
 size_t* powers ;

__attribute__((used)) static Int decGetInt(const decNumber *dn) {
  Int theInt;
  const Unit *up;
  Int got;
  Int ilength=dn->digits+dn->exponent;
  Flag neg=decNumberIsNegative(dn);
  if (ISZERO(dn)) return 0;

  up=dn->lsu;
  theInt=0;
  if (dn->exponent>=0) {

    got=dn->exponent;
    }
   else {
    Int count=-dn->exponent;

    for (; count>=DECDPUN; up++) {
      if (*up!=0) return BADINT;
      count-=DECDPUN;
      }
    if (count==0) got=0;
     else {
      Int rem;


        theInt=QUOT10(*up, count);
        rem=*up-theInt*powers[count];




      if (rem!=0) return BADINT;

      got=DECDPUN-count;
      up++;
      }
    }



  if (got==0) {theInt=*up; got+=DECDPUN; up++;}

  if (ilength<11) {
    Int save=theInt;

    for (; got<ilength; up++) {
      theInt+=*up*powers[got];
      got+=DECDPUN;
      }
    if (ilength==10) {
      if (theInt/(Int)powers[got-DECDPUN]!=(Int)*(up-1)) ilength=11;

       else if (neg && theInt>1999999997) ilength=11;
       else if (!neg && theInt>999999999) ilength=11;
      if (ilength==11) theInt=save;
      }
    }

  if (ilength>10) {
    if (theInt&1) return BIGODD;
    return BIGEVEN;
    }

  if (neg) theInt=-theInt;
  return theInt;
  }
