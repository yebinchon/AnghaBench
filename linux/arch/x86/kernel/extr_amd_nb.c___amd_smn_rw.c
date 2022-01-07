
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ num; } ;
struct TYPE_3__ {struct pci_dev* root; } ;


 int ENODEV ;
 TYPE_2__ amd_northbridges ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* node_to_amd_nb (scalar_t__) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;
 int pr_warn (char*,char*,...) ;
 int smn_mutex ;

__attribute__((used)) static int __amd_smn_rw(u16 node, u32 address, u32 *value, bool write)
{
 struct pci_dev *root;
 int err = -ENODEV;

 if (node >= amd_northbridges.num)
  goto out;

 root = node_to_amd_nb(node)->root;
 if (!root)
  goto out;

 mutex_lock(&smn_mutex);

 err = pci_write_config_dword(root, 0x60, address);
 if (err) {
  pr_warn("Error programming SMN address 0x%x.\n", address);
  goto out_unlock;
 }

 err = (write ? pci_write_config_dword(root, 0x64, *value)
       : pci_read_config_dword(root, 0x64, value));
 if (err)
  pr_warn("Error %s SMN address 0x%x.\n",
   (write ? "writing to" : "reading from"), address);

out_unlock:
 mutex_unlock(&smn_mutex);

out:
 return err;
}
