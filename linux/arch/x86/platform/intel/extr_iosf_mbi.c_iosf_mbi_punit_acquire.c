
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iosf_mbi_pmic_access_mutex ;
 int iosf_mbi_pmic_access_waitq ;
 scalar_t__ iosf_mbi_pmic_i2c_access_count ;
 int iosf_mbi_pmic_punit_access_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int) ;

void iosf_mbi_punit_acquire(void)
{

 mutex_lock(&iosf_mbi_pmic_access_mutex);
 while (iosf_mbi_pmic_i2c_access_count != 0) {
  mutex_unlock(&iosf_mbi_pmic_access_mutex);
  wait_event(iosf_mbi_pmic_access_waitq,
      iosf_mbi_pmic_i2c_access_count == 0);
  mutex_lock(&iosf_mbi_pmic_access_mutex);
 }




 iosf_mbi_pmic_punit_access_count++;
 mutex_unlock(&iosf_mbi_pmic_access_mutex);
}
