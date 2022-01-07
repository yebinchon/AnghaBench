
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;
typedef scalar_t__ Int ;


 scalar_t__ DECEMIN ;
 scalar_t__ DFISSPECIAL (int const*) ;
 scalar_t__ DFISZERO (int const*) ;
 scalar_t__ GETEXPUN (int const*) ;
 scalar_t__ decFloatDigits (int const*) ;

uInt decFloatIsNormal(const decFloat *df) {
  Int exp;
  if (DFISSPECIAL(df)) return 0;
  if (DFISZERO(df)) return 0;

  exp=GETEXPUN(df)
     +decFloatDigits(df)-1;
  return (exp>=DECEMIN);
  }
