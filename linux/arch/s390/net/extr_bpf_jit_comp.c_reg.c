
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int* reg2hex ;

__attribute__((used)) static inline u32 reg(u32 dst_reg, u32 src_reg)
{
 return reg2hex[dst_reg] << 4 | reg2hex[src_reg];
}
