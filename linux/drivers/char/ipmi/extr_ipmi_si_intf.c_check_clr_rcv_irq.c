
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;
struct smi_info {int cannot_disable_irq; TYPE_1__ io; } ;


 int IPMI_BMC_RCV_MSG_INTR ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int get_global_enables (struct smi_info*,int*) ;
 int set_global_enables (struct smi_info*,int) ;

__attribute__((used)) static void check_clr_rcv_irq(struct smi_info *smi_info)
{
 u8 enables = 0;
 int rv;

 rv = get_global_enables(smi_info, &enables);
 if (!rv) {
  if ((enables & IPMI_BMC_RCV_MSG_INTR) == 0)

   return;

  enables &= ~IPMI_BMC_RCV_MSG_INTR;
  rv = set_global_enables(smi_info, enables);
 }

 if (rv < 0) {
  dev_err(smi_info->io.dev,
   "Cannot check clearing the rcv irq: %d\n", rv);
  return;
 }

 if (rv) {




  dev_warn(smi_info->io.dev,
    "The BMC does not support clearing the recv irq bit, compensating, but the BMC needs to be fixed.\n");
  smi_info->cannot_disable_irq = 1;
 }
}
