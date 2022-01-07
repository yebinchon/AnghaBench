
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 int DFISNAN (int const*) ;
 scalar_t__ DFISSIGNED (int const*) ;
 int DFISZERO (int const*) ;

uInt decFloatIsNegative(const decFloat *df) {
  return DFISSIGNED(df) && !DFISZERO(df) && !DFISNAN(df);
  }
