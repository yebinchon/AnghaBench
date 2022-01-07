
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 int DFISNAN (int const*) ;
 int DFISSIGNED (int const*) ;
 int DFISZERO (int const*) ;

uInt decFloatIsPositive(const decFloat *df) {
  return !DFISSIGNED(df) && !DFISZERO(df) && !DFISNAN(df);
  }
