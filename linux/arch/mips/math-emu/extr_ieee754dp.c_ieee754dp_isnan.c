
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754dp {int dummy; } ieee754dp ;


 int ieee754_class_nan (int ) ;
 int ieee754dp_class (union ieee754dp) ;

__attribute__((used)) static inline int ieee754dp_isnan(union ieee754dp x)
{
 return ieee754_class_nan(ieee754dp_class(x));
}
