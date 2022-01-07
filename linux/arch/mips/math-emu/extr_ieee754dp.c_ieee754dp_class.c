
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;


 int COMPXDP ;
 int EXPLODEXDP ;
 int xc ;

int ieee754dp_class(union ieee754dp x)
{
 COMPXDP;
 EXPLODEXDP;
 return xc;
}
