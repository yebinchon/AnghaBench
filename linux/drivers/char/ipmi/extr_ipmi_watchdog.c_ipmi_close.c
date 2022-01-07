
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int IPMI_SET_TIMEOUT_NO_HB ;
 scalar_t__ WATCHDOG_MINOR ;
 int WDOG_TIMEOUT_NONE ;
 int _ipmi_set_timeout (int ) ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 scalar_t__ iminor (struct inode*) ;
 int ipmi_heartbeat () ;
 int ipmi_watchdog_mutex ;
 int ipmi_watchdog_state ;
 int ipmi_wdog_open ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_crit (char*) ;

__attribute__((used)) static int ipmi_close(struct inode *ino, struct file *filep)
{
 if (iminor(ino) == WATCHDOG_MINOR) {
  if (expect_close == 42) {
   mutex_lock(&ipmi_watchdog_mutex);
   ipmi_watchdog_state = WDOG_TIMEOUT_NONE;
   _ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB);
   mutex_unlock(&ipmi_watchdog_mutex);
  } else {
   pr_crit("Unexpected close, not stopping watchdog!\n");
   ipmi_heartbeat();
  }
  clear_bit(0, &ipmi_wdog_open);
 }

 expect_close = 0;

 return 0;
}
