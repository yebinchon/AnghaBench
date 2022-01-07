
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 scalar_t__ SWRST ;
 int __raw_writel (int,scalar_t__) ;
 scalar_t__ reg_base ;

__attribute__((used)) static int s3c2443_restart(struct notifier_block *this,
      unsigned long mode, void *cmd)
{
 __raw_writel(0x533c2443, reg_base + SWRST);
 return NOTIFY_DONE;
}
