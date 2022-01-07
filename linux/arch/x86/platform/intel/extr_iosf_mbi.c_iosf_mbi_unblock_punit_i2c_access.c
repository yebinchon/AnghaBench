
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int iosf_mbi_pmic_access_mutex ;
 int iosf_mbi_pmic_access_waitq ;
 scalar_t__ iosf_mbi_pmic_i2c_access_count ;
 int iosf_mbi_reset_semaphore () ;
 scalar_t__ iosf_mbi_sem_acquired ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 TYPE_1__* mbi_pdev ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

void iosf_mbi_unblock_punit_i2c_access(void)
{
 bool do_wakeup = 0;

 mutex_lock(&iosf_mbi_pmic_access_mutex);
 iosf_mbi_pmic_i2c_access_count--;
 if (iosf_mbi_pmic_i2c_access_count == 0) {
  iosf_mbi_reset_semaphore();
  dev_dbg(&mbi_pdev->dev, "punit semaphore held for %ums\n",
   jiffies_to_msecs(jiffies - iosf_mbi_sem_acquired));
  do_wakeup = 1;
 }
 mutex_unlock(&iosf_mbi_pmic_access_mutex);

 if (do_wakeup)
  wake_up(&iosf_mbi_pmic_access_waitq);
}
