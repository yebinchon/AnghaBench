
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 int DFISSNAN (int const*) ;

uInt decFloatIsSignaling(const decFloat *df) {
  return DFISSNAN(df);
  }
