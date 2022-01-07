
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 scalar_t__ CANONDPDOFF (int,int) ;
 scalar_t__ CANONDPDTWO (int,int,int) ;
 scalar_t__ DFISCCZERO (int const*) ;
 scalar_t__ DFISINF (int const*) ;
 scalar_t__ DFISSPECIAL (int const*) ;
 int DFWORD (int const*,int) ;
 int ECONMASK ;
 int ECONNANMASK ;

uInt decFloatIsCanonical(const decFloat *df) {
  if (DFISSPECIAL(df)) {
    if (DFISINF(df)) {
      if (DFWORD(df, 0)&ECONMASK) return 0;
      if (!DFISCCZERO(df)) return 0;
      return 1;
      }

    if (DFWORD(df, 0)&ECONNANMASK) return 0;
    if (DFISCCZERO(df)) return 1;

    }
  {
  }
  return 0;
  }
