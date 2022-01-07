
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 int DFISSPECIAL (int const*) ;

uInt decFloatIsFinite(const decFloat *df) {
  return !DFISSPECIAL(df);
  }
