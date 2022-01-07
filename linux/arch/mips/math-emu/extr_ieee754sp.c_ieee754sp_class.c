
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;


 int COMPXSP ;
 int EXPLODEXSP ;
 int xc ;

int ieee754sp_class(union ieee754sp x)
{
 COMPXSP;
 EXPLODEXSP;
 return xc;
}
