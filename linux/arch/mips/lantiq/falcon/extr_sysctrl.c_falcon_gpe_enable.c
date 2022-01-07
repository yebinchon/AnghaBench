
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GPEFREQ_MASK ;
 unsigned int GPEFREQ_OFFSET ;
 int GPPC_OFFSET ;
 int STATUS_CONFIG ;
 int SYS1_INFRAC ;
 int SYSCTL_SYS1 ;
 unsigned int status_r32 (int ) ;
 unsigned int sysctl_r32 (int ,int ) ;
 int sysctl_w32_mask (int ,int,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void falcon_gpe_enable(void)
{
 unsigned int freq;
 unsigned int status;


 status = sysctl_r32(SYSCTL_SYS1, SYS1_INFRAC);
 if (status & (1 << (GPPC_OFFSET + 1)))
  return;

 freq = (status_r32(STATUS_CONFIG) &
  GPEFREQ_MASK) >>
  GPEFREQ_OFFSET;
 if (freq == 0)
  freq = 1;


 sysctl_w32_mask(SYSCTL_SYS1, 7 << (GPPC_OFFSET + 1),
  freq << (GPPC_OFFSET + 2) , SYS1_INFRAC);
 udelay(1);


 sysctl_w32_mask(SYSCTL_SYS1, 0, 1 << (GPPC_OFFSET + 1), SYS1_INFRAC);
 udelay(1);
}
