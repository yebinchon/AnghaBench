
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int* reg2hex ;

__attribute__((used)) static inline u32 reg_high(u32 reg)
{
 return reg2hex[reg] << 4;
}
