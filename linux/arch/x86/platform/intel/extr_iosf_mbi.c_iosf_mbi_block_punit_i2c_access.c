
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int dev; } ;


 int BT_MBI_UNIT_PMC ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MBI_PMIC_BUS_ACCESS_BEGIN ;
 int MBI_REG_WRITE ;
 int PUNIT_SEMAPHORE_ACQUIRE ;
 int SEMAPHORE_TIMEOUT ;
 scalar_t__ WARN_ON (int) ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,...) ;
 int iosf_mbi_get_sem (scalar_t__*) ;
 int iosf_mbi_pm_qos ;
 int iosf_mbi_pmic_access_mutex ;
 int iosf_mbi_pmic_access_waitq ;
 int iosf_mbi_pmic_bus_access_notifier ;
 scalar_t__ iosf_mbi_pmic_i2c_access_count ;
 scalar_t__ iosf_mbi_pmic_punit_access_count ;
 int iosf_mbi_reset_semaphore () ;
 unsigned long iosf_mbi_sem_acquired ;
 int iosf_mbi_sem_address ;
 int iosf_mbi_write (int ,int ,int ,int ) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 TYPE_1__* mbi_pdev ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_qos_update_request (int *,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;
 int wait_event (int ,int) ;

int iosf_mbi_block_punit_i2c_access(void)
{
 unsigned long start, end;
 int ret = 0;
 u32 sem;

 if (WARN_ON(!mbi_pdev || !iosf_mbi_sem_address))
  return -ENXIO;

 mutex_lock(&iosf_mbi_pmic_access_mutex);

 while (iosf_mbi_pmic_punit_access_count != 0) {
  mutex_unlock(&iosf_mbi_pmic_access_mutex);
  wait_event(iosf_mbi_pmic_access_waitq,
      iosf_mbi_pmic_punit_access_count == 0);
  mutex_lock(&iosf_mbi_pmic_access_mutex);
 }

 if (iosf_mbi_pmic_i2c_access_count > 0)
  goto success;

 blocking_notifier_call_chain(&iosf_mbi_pmic_bus_access_notifier,
         MBI_PMIC_BUS_ACCESS_BEGIN, ((void*)0));






 pm_qos_update_request(&iosf_mbi_pm_qos, 0);


 ret = iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_REG_WRITE,
        iosf_mbi_sem_address, PUNIT_SEMAPHORE_ACQUIRE);
 if (ret) {
  dev_err(&mbi_pdev->dev, "Error P-Unit semaphore request failed\n");
  goto error;
 }


 start = jiffies;
 end = start + msecs_to_jiffies(SEMAPHORE_TIMEOUT);
 do {
  ret = iosf_mbi_get_sem(&sem);
  if (!ret && sem) {
   iosf_mbi_sem_acquired = jiffies;
   dev_dbg(&mbi_pdev->dev, "P-Unit semaphore acquired after %ums\n",
    jiffies_to_msecs(jiffies - start));
   goto success;
  }

  usleep_range(1000, 2000);
 } while (time_before(jiffies, end));

 ret = -ETIMEDOUT;
 dev_err(&mbi_pdev->dev, "Error P-Unit semaphore timed out, resetting\n");
error:
 iosf_mbi_reset_semaphore();
 if (!iosf_mbi_get_sem(&sem))
  dev_err(&mbi_pdev->dev, "P-Unit semaphore: %d\n", sem);
success:
 if (!WARN_ON(ret))
  iosf_mbi_pmic_i2c_access_count++;

 mutex_unlock(&iosf_mbi_pmic_access_mutex);

 return ret;
}
