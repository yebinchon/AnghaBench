
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int msi_index; } ;
struct msi_desc {int list; TYPE_1__ fsl_mc; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct msi_desc* alloc_msi_entry (struct device*,int,int *) ;
 int dev_err (struct device*,char*) ;
 int dev_to_msi_list (struct device*) ;
 int fsl_mc_msi_free_descs (struct device*) ;
 int list_add_tail (int *,int ) ;

__attribute__((used)) static int fsl_mc_msi_alloc_descs(struct device *dev, unsigned int irq_count)

{
 unsigned int i;
 int error;
 struct msi_desc *msi_desc;

 for (i = 0; i < irq_count; i++) {
  msi_desc = alloc_msi_entry(dev, 1, ((void*)0));
  if (!msi_desc) {
   dev_err(dev, "Failed to allocate msi entry\n");
   error = -ENOMEM;
   goto cleanup_msi_descs;
  }

  msi_desc->fsl_mc.msi_index = i;
  INIT_LIST_HEAD(&msi_desc->list);
  list_add_tail(&msi_desc->list, dev_to_msi_list(dev));
 }

 return 0;

cleanup_msi_descs:
 fsl_mc_msi_free_descs(dev);
 return error;
}
