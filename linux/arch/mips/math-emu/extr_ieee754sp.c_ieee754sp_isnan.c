
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;


 int ieee754_class_nan (int ) ;
 int ieee754sp_class (union ieee754sp) ;

__attribute__((used)) static inline int ieee754sp_isnan(union ieee754sp x)
{
 return ieee754_class_nan(ieee754sp_class(x));
}
