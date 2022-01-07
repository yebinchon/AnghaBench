
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct pci_dev {TYPE_2__ dev; int * resource; } ;
struct TYPE_3__ {char* name; int mode; } ;
struct bin_attribute {size_t size; int * private; TYPE_1__ attr; int mmap; } ;


 int S_IRUSR ;
 int S_IWUSR ;
 int pci_mmap_resource_dense ;
 int pci_mmap_resource_sparse ;
 size_t pci_resource_len (struct pci_dev*,int) ;
 int sprintf (char*,char*,int,char*) ;
 int sysfs_create_bin_file (int *,struct bin_attribute*) ;

__attribute__((used)) static int pci_create_one_attr(struct pci_dev *pdev, int num, char *name,
          char *suffix, struct bin_attribute *res_attr,
          unsigned long sparse)
{
 size_t size = pci_resource_len(pdev, num);

 sprintf(name, "resource%d%s", num, suffix);
 res_attr->mmap = sparse ? pci_mmap_resource_sparse :
      pci_mmap_resource_dense;
 res_attr->attr.name = name;
 res_attr->attr.mode = S_IRUSR | S_IWUSR;
 res_attr->size = sparse ? size << 5 : size;
 res_attr->private = &pdev->resource[num];
 return sysfs_create_bin_file(&pdev->dev.kobj, res_attr);
}
