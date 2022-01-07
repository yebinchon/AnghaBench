
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_device {int bus; } ;


 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_warn (int ,char*,int ) ;
 int cpu_relax () ;
 int jiffies ;
 int time_after_eq (int,unsigned long) ;
 int udelay (int) ;

bool bcma_wait_value(struct bcma_device *core, u16 reg, u32 mask, u32 value,
       int timeout)
{
 unsigned long deadline = jiffies + timeout;
 u32 val;

 do {
  val = bcma_read32(core, reg);
  if ((val & mask) == value)
   return 1;
  cpu_relax();
  udelay(10);
 } while (!time_after_eq(jiffies, deadline));

 bcma_warn(core->bus, "Timeout waiting for register 0x%04X!\n", reg);

 return 0;
}
