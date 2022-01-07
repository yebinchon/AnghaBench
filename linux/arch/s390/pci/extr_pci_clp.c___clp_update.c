
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpci_dev {int fh; } ;
struct clp_fh_list_entry {int fh; int fid; int vendor_id; } ;


 struct zpci_dev* get_zdev_by_fid (int ) ;

__attribute__((used)) static void __clp_update(struct clp_fh_list_entry *entry, void *data)
{
 struct zpci_dev *zdev;

 if (!entry->vendor_id)
  return;

 zdev = get_zdev_by_fid(entry->fid);
 if (!zdev)
  return;

 zdev->fh = entry->fh;
}
