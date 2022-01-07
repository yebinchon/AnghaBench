
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_AMD64_SMCA_MCx_STATUS (int) ;

__attribute__((used)) static inline u32 smca_status_reg(int bank)
{
 return MSR_AMD64_SMCA_MCx_STATUS(bank);
}
