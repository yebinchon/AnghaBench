
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int __raw_writel (scalar_t__,scalar_t__) ;
 scalar_t__ ar5312_rst_base ;

__attribute__((used)) static inline void ar5312_rst_reg_write(u32 reg, u32 val)
{
 __raw_writel(val, ar5312_rst_base + reg);
}
