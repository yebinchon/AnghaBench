
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
struct TYPE_4__ {TYPE_1__* svrwrks_dev; scalar_t__ registers; } ;
struct TYPE_3__ {int dev; } ;


 int HZ ;
 scalar_t__ SVWRKS_DIRFLUSH ;
 scalar_t__ SVWRKS_POSTFLUSH ;
 int cpu_relax () ;
 int dev_err (int *,char*) ;
 int jiffies ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 TYPE_2__ serverworks_private ;
 scalar_t__ time_after (int,unsigned long) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void serverworks_tlbflush(struct agp_memory *temp)
{
 unsigned long timeout;

 writeb(1, serverworks_private.registers+SVWRKS_POSTFLUSH);
 timeout = jiffies + 3*HZ;
 while (readb(serverworks_private.registers+SVWRKS_POSTFLUSH) == 1) {
  cpu_relax();
  if (time_after(jiffies, timeout)) {
   dev_err(&serverworks_private.svrwrks_dev->dev,
    "TLB post flush took more than 3 seconds\n");
   break;
  }
 }

 writel(1, serverworks_private.registers+SVWRKS_DIRFLUSH);
 timeout = jiffies + 3*HZ;
 while (readl(serverworks_private.registers+SVWRKS_DIRFLUSH) == 1) {
  cpu_relax();
  if (time_after(jiffies, timeout)) {
   dev_err(&serverworks_private.svrwrks_dev->dev,
    "TLB Dir flush took more than 3 seconds\n");
   break;
  }
 }
}
