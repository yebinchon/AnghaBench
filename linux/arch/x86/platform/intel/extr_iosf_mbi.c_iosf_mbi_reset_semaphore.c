
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int BT_MBI_UNIT_PMC ;
 int MBI_PMIC_BUS_ACCESS_END ;
 int MBI_REG_READ ;
 int PM_QOS_DEFAULT_VALUE ;
 int PUNIT_SEMAPHORE_BIT ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 int dev_err (int *,char*) ;
 scalar_t__ iosf_mbi_modify (int ,int ,int ,int ,int ) ;
 int iosf_mbi_pm_qos ;
 int iosf_mbi_pmic_bus_access_notifier ;
 int iosf_mbi_sem_address ;
 TYPE_1__* mbi_pdev ;
 int pm_qos_update_request (int *,int ) ;

__attribute__((used)) static void iosf_mbi_reset_semaphore(void)
{
 if (iosf_mbi_modify(BT_MBI_UNIT_PMC, MBI_REG_READ,
       iosf_mbi_sem_address, 0, PUNIT_SEMAPHORE_BIT))
  dev_err(&mbi_pdev->dev, "Error P-Unit semaphore reset failed\n");

 pm_qos_update_request(&iosf_mbi_pm_qos, PM_QOS_DEFAULT_VALUE);

 blocking_notifier_call_chain(&iosf_mbi_pmic_bus_access_notifier,
         MBI_PMIC_BUS_ACCESS_END, ((void*)0));
}
