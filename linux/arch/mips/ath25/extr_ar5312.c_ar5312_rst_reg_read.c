
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ __raw_readl (scalar_t__) ;
 scalar_t__ ar5312_rst_base ;

__attribute__((used)) static inline u32 ar5312_rst_reg_read(u32 reg)
{
 return __raw_readl(ar5312_rst_base + reg);
}
