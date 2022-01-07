
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uInt ;
typedef int uByte ;
struct TYPE_5__ {int digits; int exponent; int bits; scalar_t__* lsu; } ;
typedef TYPE_1__ decNumber ;
typedef scalar_t__ Unit ;
typedef int Int ;


 int DECDPUN ;
 int DECNEG ;
 int const DECNUMMAXE ;
 int DECPMINUS ;
 int DECPMINUSALT ;
 int* DECPOWERS ;
 int decNumberZero (TYPE_1__*) ;

decNumber * decPackedToNumber(const uByte *bcd, Int length,
                              const Int *scale, decNumber *dn) {
  const uByte *last=bcd+length-1;
  const uByte *first;
  uInt nib;
  Unit *up=dn->lsu;
  Int digits;
  Int cut=0;

  decNumberZero(dn);
  last=&bcd[length-1];
  nib=*last & 0x0f;
  if (nib==DECPMINUS || nib==DECPMINUSALT) dn->bits=DECNEG;
   else if (nib<=9) return ((void*)0);


  for (first=bcd; *first==0;) first++;
  digits=(last-first)*2+1;
  if ((*first & 0xf0)==0) digits--;
  if (digits!=0) dn->digits=digits;



  dn->exponent=-*scale;
  if (*scale>=0) {
    if ((dn->digits-*scale-1)<-DECNUMMAXE) {
      decNumberZero(dn);
      return ((void*)0);}
    }
   else {

    if ((*scale<-DECNUMMAXE)
         || ((dn->digits-*scale-1)>DECNUMMAXE)) {
      decNumberZero(dn);
      return ((void*)0);}
    }
  if (digits==0) return dn;



  for (;;) {

    nib=(unsigned)(*last & 0xf0)>>4;

    if (nib>9) {decNumberZero(dn); return ((void*)0);}

    if (cut==0) *up=(Unit)nib;
     else *up=(Unit)(*up+nib*DECPOWERS[cut]);
    digits--;
    if (digits==0) break;
    cut++;
    if (cut==DECDPUN) {
      up++;
      cut=0;
      }
    last--;
    nib=*last & 0x0f;
    if (nib>9) {decNumberZero(dn); return ((void*)0);}


    if (cut==0) *up=(Unit)nib;
     else *up=(Unit)(*up+nib*DECPOWERS[cut]);
    digits--;
    if (digits==0) break;
    cut++;
    if (cut==DECDPUN) {
      up++;
      cut=0;
      }
    }

  return dn;
  }
