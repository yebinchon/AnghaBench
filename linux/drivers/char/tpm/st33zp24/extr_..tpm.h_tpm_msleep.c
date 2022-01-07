
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TPM_TIMEOUT_RANGE_US ;
 int usleep_range (scalar_t__,unsigned int) ;

__attribute__((used)) static inline void tpm_msleep(unsigned int delay_msec)
{
 usleep_range((delay_msec * 1000) - TPM_TIMEOUT_RANGE_US,
       delay_msec * 1000);
}
