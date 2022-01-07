
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int div_ext_fp (int,int) ;

__attribute__((used)) static inline int32_t percent_ext_fp(int percent)
{
 return div_ext_fp(percent, 100);
}
