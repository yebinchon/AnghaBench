
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {void* state; int fh; int fid; int bus; } ;
struct zpci_ccdf_avail {int fid; int fh; int pec; } ;
struct pci_dev {int error_state; } ;
typedef enum zpci_state { ____Placeholder_zpci_state } zpci_state ;


 int ZPCI_DEVFN ;
 void* ZPCI_FN_STATE_CONFIGURED ;
 int ZPCI_FN_STATE_RESERVED ;
 void* ZPCI_FN_STATE_STANDBY ;
 int clp_add_pci_device (int ,int ,int ) ;
 int clp_get_state (int ,int*) ;
 int clp_rescan_pci_devices () ;
 struct zpci_dev* get_zdev_by_fid (int ) ;
 int pci_channel_io_perm_failure ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,int ) ;
 int pci_lock_rescan_remove () ;
 char* pci_name (struct pci_dev*) ;
 int pci_rescan_bus (int ) ;
 int pci_stop_and_remove_bus_device_locked (struct pci_dev*) ;
 int pci_unlock_rescan_remove () ;
 int pr_info (char*,char*,int ,int ) ;
 int sclp_pci_deconfigure (int ) ;
 int zpci_dbg (int,char*,int ,int) ;
 int zpci_disable_device (struct zpci_dev*) ;
 int zpci_enable_device (struct zpci_dev*) ;
 int zpci_err (char*) ;
 int zpci_err_hex (struct zpci_ccdf_avail*,int) ;
 int zpci_remove_device (struct zpci_dev*) ;

__attribute__((used)) static void __zpci_event_availability(struct zpci_ccdf_avail *ccdf)
{
 struct zpci_dev *zdev = get_zdev_by_fid(ccdf->fid);
 struct pci_dev *pdev = ((void*)0);
 enum zpci_state state;
 int ret;

 if (zdev)
  pdev = pci_get_slot(zdev->bus, ZPCI_DEVFN);

 pr_info("%s: Event 0x%x reconfigured PCI function 0x%x\n",
  pdev ? pci_name(pdev) : "n/a", ccdf->pec, ccdf->fid);
 zpci_err("avail CCDF:\n");
 zpci_err_hex(ccdf, sizeof(*ccdf));

 switch (ccdf->pec) {
 case 0x0301:
  if (!zdev) {
   ret = clp_add_pci_device(ccdf->fid, ccdf->fh, 0);
   if (ret)
    break;
   zdev = get_zdev_by_fid(ccdf->fid);
  }
  if (!zdev || zdev->state != ZPCI_FN_STATE_STANDBY)
   break;
  zdev->state = ZPCI_FN_STATE_CONFIGURED;
  zdev->fh = ccdf->fh;
  ret = zpci_enable_device(zdev);
  if (ret)
   break;
  pci_lock_rescan_remove();
  pci_rescan_bus(zdev->bus);
  pci_unlock_rescan_remove();
  break;
 case 0x0302:
  if (!zdev)
   clp_add_pci_device(ccdf->fid, ccdf->fh, 0);
  break;
 case 0x0303:
  if (!zdev)
   break;
  if (pdev)
   pci_stop_and_remove_bus_device_locked(pdev);

  ret = zpci_disable_device(zdev);
  if (ret)
   break;

  ret = sclp_pci_deconfigure(zdev->fid);
  zpci_dbg(3, "deconf fid:%x, rc:%d\n", zdev->fid, ret);
  if (!ret)
   zdev->state = ZPCI_FN_STATE_STANDBY;

  break;
 case 0x0304:
  if (!zdev)
   break;
  if (pdev) {


   pdev->error_state = pci_channel_io_perm_failure;
   pci_stop_and_remove_bus_device_locked(pdev);
  }

  zdev->fh = ccdf->fh;
  zpci_disable_device(zdev);
  zdev->state = ZPCI_FN_STATE_STANDBY;
  if (!clp_get_state(ccdf->fid, &state) &&
      state == ZPCI_FN_STATE_RESERVED) {
   zpci_remove_device(zdev);
  }
  break;
 case 0x0306:
  clp_rescan_pci_devices();
  break;
 case 0x0308:
  if (!zdev)
   break;
  zpci_remove_device(zdev);
  break;
 default:
  break;
 }
 pci_dev_put(pdev);
}
