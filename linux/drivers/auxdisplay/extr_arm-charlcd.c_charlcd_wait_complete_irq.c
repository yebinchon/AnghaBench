
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dev; scalar_t__ virtbase; int complete; } ;


 int CHARLCD_TIMEOUT ;
 scalar_t__ CHAR_MASK ;
 int dev_err (int ,char*,...) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void charlcd_wait_complete_irq(struct charlcd *lcd)
{
 int ret;

 ret = wait_for_completion_interruptible_timeout(&lcd->complete,
       CHARLCD_TIMEOUT);

 writel(0x00, lcd->virtbase + CHAR_MASK);

 if (ret < 0) {
  dev_err(lcd->dev,
   "wait_for_completion_interruptible_timeout() "
   "returned %d waiting for ready\n", ret);
  return;
 }

 if (ret == 0) {
  dev_err(lcd->dev, "charlcd controller timed out "
   "waiting for ready\n");
  return;
 }
}
