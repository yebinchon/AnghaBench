
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;


 union ieee754sp _sp_maddf (union ieee754sp,union ieee754sp,union ieee754sp,int ) ;

union ieee754sp ieee754sp_maddf(union ieee754sp z, union ieee754sp x,
    union ieee754sp y)
{
 return _sp_maddf(z, x, y, 0);
}
