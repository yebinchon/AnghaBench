
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iosf_mbi_pmic_access_mutex ;
 int iosf_mbi_pmic_access_waitq ;
 scalar_t__ iosf_mbi_pmic_punit_access_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

void iosf_mbi_punit_release(void)
{
 bool do_wakeup;

 mutex_lock(&iosf_mbi_pmic_access_mutex);
 iosf_mbi_pmic_punit_access_count--;
 do_wakeup = iosf_mbi_pmic_punit_access_count == 0;
 mutex_unlock(&iosf_mbi_pmic_access_mutex);

 if (do_wakeup)
  wake_up(&iosf_mbi_pmic_access_waitq);
}
