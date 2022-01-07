
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 scalar_t__ DFISSPECIAL (int const*) ;
 scalar_t__ DFISZERO (int const*) ;
 scalar_t__ decFloatIsNormal (int const*) ;

uInt decFloatIsSubnormal(const decFloat *df) {
  if (DFISSPECIAL(df)) return 0;

  if (decFloatIsNormal(df)) return 0;

  if (DFISZERO(df)) return 0;
  return 1;
  }
