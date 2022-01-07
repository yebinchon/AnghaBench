
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_cardinfo {struct dentry* debugfs_dir; TYPE_1__* gendisk; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int disk_name; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int debugfs_cram_fops ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 struct dentry* debugfs_create_file (char*,int,struct dentry*,struct rsxx_cardinfo*,int *) ;
 int debugfs_pci_regs_fops ;
 int debugfs_remove (struct dentry*) ;
 int debugfs_stats_fops ;

__attribute__((used)) static void rsxx_debugfs_dev_new(struct rsxx_cardinfo *card)
{
 struct dentry *debugfs_stats;
 struct dentry *debugfs_pci_regs;
 struct dentry *debugfs_cram;

 card->debugfs_dir = debugfs_create_dir(card->gendisk->disk_name, ((void*)0));
 if (IS_ERR_OR_NULL(card->debugfs_dir))
  goto failed_debugfs_dir;

 debugfs_stats = debugfs_create_file("stats", 0444,
         card->debugfs_dir, card,
         &debugfs_stats_fops);
 if (IS_ERR_OR_NULL(debugfs_stats))
  goto failed_debugfs_stats;

 debugfs_pci_regs = debugfs_create_file("pci_regs", 0444,
            card->debugfs_dir, card,
            &debugfs_pci_regs_fops);
 if (IS_ERR_OR_NULL(debugfs_pci_regs))
  goto failed_debugfs_pci_regs;

 debugfs_cram = debugfs_create_file("cram", 0644,
        card->debugfs_dir, card,
        &debugfs_cram_fops);
 if (IS_ERR_OR_NULL(debugfs_cram))
  goto failed_debugfs_cram;

 return;
failed_debugfs_cram:
 debugfs_remove(debugfs_pci_regs);
failed_debugfs_pci_regs:
 debugfs_remove(debugfs_stats);
failed_debugfs_stats:
 debugfs_remove(card->debugfs_dir);
failed_debugfs_dir:
 card->debugfs_dir = ((void*)0);
}
