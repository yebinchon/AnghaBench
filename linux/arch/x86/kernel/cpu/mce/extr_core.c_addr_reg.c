
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_IA32_MCx_ADDR (int) ;

__attribute__((used)) static inline u32 addr_reg(int bank)
{
 return MSR_IA32_MCx_ADDR(bank);
}
