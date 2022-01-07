
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 scalar_t__ iosf_mbi_pmic_punit_access_count ;

void iosf_mbi_assert_punit_acquired(void)
{
 WARN_ON(iosf_mbi_pmic_punit_access_count == 0);
}
