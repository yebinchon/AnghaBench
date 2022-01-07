
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE754_CLASS_SNAN ;

__attribute__((used)) static inline int ieee754_class_nan(int xc)
{
 return xc >= IEEE754_CLASS_SNAN;
}
