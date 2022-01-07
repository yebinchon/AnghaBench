
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int Unit ;
typedef size_t Int ;


 int D2U (size_t) ;
 size_t DECDPUN ;
 size_t MSUDIGITS (size_t) ;
 int QUOT10 (int,size_t) ;
 int* powers ;

__attribute__((used)) static Int decShiftToMost(Unit *uar, Int digits, Int shift) {
  Unit *target, *source, *first;
  Int cut;
  uInt next;

  if (shift==0) return digits;
  if ((digits+shift)<=DECDPUN) {
    *uar=(Unit)(*uar*powers[shift]);
    return digits+shift;
    }

  next=0;
  source=uar+D2U(digits)-1;
  target=source+D2U(shift);
  cut=DECDPUN-MSUDIGITS(shift);
  if (cut==0) {
    for (; source>=uar; source--, target--) *target=*source;
    }
   else {
    first=uar+D2U(digits+shift)-1;
    for (; source>=uar; source--, target--) {


        uInt quot=QUOT10(*source, cut);
        uInt rem=*source-quot*powers[cut];
        next+=quot;




      if (target<=first) *target=(Unit)next;
      next=rem*powers[DECDPUN-cut];
      }
    }


  for (; target>=uar; target--) {
    *target=(Unit)next;
    next=0;
    }
  return digits+shift;
  }
