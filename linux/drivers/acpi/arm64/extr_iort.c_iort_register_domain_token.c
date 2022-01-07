
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iort_its_msi_chip {int translation_id; int list; int base_addr; struct fwnode_handle* fw_node; } ;
struct fwnode_handle {int dummy; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int iort_msi_chip_list ;
 int iort_msi_chip_lock ;
 struct iort_its_msi_chip* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iort_register_domain_token(int trans_id, phys_addr_t base,
          struct fwnode_handle *fw_node)
{
 struct iort_its_msi_chip *its_msi_chip;

 its_msi_chip = kzalloc(sizeof(*its_msi_chip), GFP_KERNEL);
 if (!its_msi_chip)
  return -ENOMEM;

 its_msi_chip->fw_node = fw_node;
 its_msi_chip->translation_id = trans_id;
 its_msi_chip->base_addr = base;

 spin_lock(&iort_msi_chip_lock);
 list_add(&its_msi_chip->list, &iort_msi_chip_list);
 spin_unlock(&iort_msi_chip_lock);

 return 0;
}
