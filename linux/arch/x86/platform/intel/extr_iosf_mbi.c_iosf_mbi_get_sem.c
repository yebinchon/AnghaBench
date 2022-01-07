
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int BT_MBI_UNIT_PMC ;
 int MBI_REG_READ ;
 int PUNIT_SEMAPHORE_BIT ;
 int dev_err (int *,char*) ;
 int iosf_mbi_read (int ,int ,int ,int *) ;
 int iosf_mbi_sem_address ;
 TYPE_1__* mbi_pdev ;

__attribute__((used)) static int iosf_mbi_get_sem(u32 *sem)
{
 int ret;

 ret = iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ,
       iosf_mbi_sem_address, sem);
 if (ret) {
  dev_err(&mbi_pdev->dev, "Error P-Unit semaphore read failed\n");
  return ret;
 }

 *sem &= PUNIT_SEMAPHORE_BIT;
 return 0;
}
