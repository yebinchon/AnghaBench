
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 int DFISCC01 (int const*) ;
 int DFISUINT01 (int const*) ;

uInt decFloatIsLogical(const decFloat *df) {
  return DFISUINT01(df) & DFISCC01(df);
  }
