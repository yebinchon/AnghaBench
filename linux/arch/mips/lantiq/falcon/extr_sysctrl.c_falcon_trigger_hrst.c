
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS1_HRSTOUTC ;
 int SYSCTL_SYS1 ;
 int sysctl_w32 (int ,int,int ) ;

void falcon_trigger_hrst(int level)
{
 sysctl_w32(SYSCTL_SYS1, level & 1, SYS1_HRSTOUTC);
}
