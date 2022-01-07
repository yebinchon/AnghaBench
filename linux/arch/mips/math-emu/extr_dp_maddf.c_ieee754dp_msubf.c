
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;


 int MADDF_NEGATE_PRODUCT ;
 union ieee754dp _dp_maddf (union ieee754dp,union ieee754dp,union ieee754dp,int ) ;

union ieee754dp ieee754dp_msubf(union ieee754dp z, union ieee754dp x,
    union ieee754dp y)
{
 return _dp_maddf(z, x, y, MADDF_NEGATE_PRODUCT);
}
