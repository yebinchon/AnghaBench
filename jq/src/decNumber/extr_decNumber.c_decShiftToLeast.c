
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;
typedef int Int ;


 int D2U (int) ;
 int DECDPUN ;
 int MSUDIGITS (int) ;
 int QUOT10 (int,int) ;
 int* powers ;

__attribute__((used)) static Int decShiftToLeast(Unit *uar, Int units, Int shift) {
  Unit *target, *up;
  Int cut, count;
  Int quot, rem;

  if (shift==0) return units;
  if (shift==units*DECDPUN) {
    *uar=0;
    return 1;
    }

  target=uar;
  cut=MSUDIGITS(shift);
  if (cut==DECDPUN) {
    up=uar+D2U(shift);
    for (; up<uar+units; target++, up++) *target=*up;
    return target-uar;
    }


  up=uar+D2U(shift-cut);
  count=units*DECDPUN-shift;

    quot=QUOT10(*up, cut);



  for (; ; target++) {
    *target=(Unit)quot;
    count-=(DECDPUN-cut);
    if (count<=0) break;
    up++;
    quot=*up;

      quot=QUOT10(quot, cut);
      rem=*up-quot*powers[cut];




    *target=(Unit)(*target+rem*powers[DECDPUN-cut]);
    count-=cut;
    if (count<=0) break;
    }
  return target-uar+1;
  }
