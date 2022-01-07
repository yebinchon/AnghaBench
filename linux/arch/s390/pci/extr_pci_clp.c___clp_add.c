
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int dummy; } ;
struct clp_fh_list_entry {int config_state; int fh; int fid; int vendor_id; } ;


 int clp_add_pci_device (int ,int ,int ) ;
 struct zpci_dev* get_zdev_by_fid (int ) ;

__attribute__((used)) static void __clp_add(struct clp_fh_list_entry *entry, void *data)
{
 struct zpci_dev *zdev;

 if (!entry->vendor_id)
  return;

 zdev = get_zdev_by_fid(entry->fid);
 if (!zdev)
  clp_add_pci_device(entry->fid, entry->fh, entry->config_state);
}
