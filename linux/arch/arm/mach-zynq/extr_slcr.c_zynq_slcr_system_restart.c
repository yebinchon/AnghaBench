
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct notifier_block {int dummy; } ;


 int SLCR_PS_RST_CTRL_OFFSET ;
 int SLCR_REBOOT_STATUS_OFFSET ;
 int zynq_slcr_read (int*,int ) ;
 int zynq_slcr_write (int,int ) ;

__attribute__((used)) static
int zynq_slcr_system_restart(struct notifier_block *nb,
        unsigned long action, void *data)
{
 u32 reboot;






 zynq_slcr_read(&reboot, SLCR_REBOOT_STATUS_OFFSET);
 zynq_slcr_write(reboot & 0xF0FFFFFF, SLCR_REBOOT_STATUS_OFFSET);
 zynq_slcr_write(1, SLCR_PS_RST_CTRL_OFFSET);
 return 0;
}
