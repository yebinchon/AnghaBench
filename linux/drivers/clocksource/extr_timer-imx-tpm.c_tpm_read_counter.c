
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TPM_CNT ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ timer_base ;

__attribute__((used)) static inline unsigned long tpm_read_counter(void)
{
 return readl(timer_base + TPM_CNT);
}
