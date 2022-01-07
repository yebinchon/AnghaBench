
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct scom_debug_entry* data; int size; } ;
struct scom_debug_entry {int chip; TYPE_1__ path; int name; } ;
struct device_node {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int debugfs_create_blob (char*,int,struct dentry*,TYPE_1__*) ;
 struct dentry* debugfs_create_dir (int ,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct scom_debug_entry*,int *) ;
 scalar_t__ kasprintf (int ,char*,struct device_node*) ;
 int kfree (struct scom_debug_entry*) ;
 struct scom_debug_entry* kzalloc (int,int ) ;
 int scom_debug_fops ;
 int snprintf (int ,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int scom_debug_init_one(struct dentry *root, struct device_node *dn,
          int chip)
{
 struct scom_debug_entry *ent;
 struct dentry *dir;

 ent = kzalloc(sizeof(*ent), GFP_KERNEL);
 if (!ent)
  return -ENOMEM;

 ent->chip = chip;
 snprintf(ent->name, 16, "%08x", chip);
 ent->path.data = (void *)kasprintf(GFP_KERNEL, "%pOF", dn);
 ent->path.size = strlen((char *)ent->path.data);

 dir = debugfs_create_dir(ent->name, root);
 if (!dir) {
  kfree(ent->path.data);
  kfree(ent);
  return -1;
 }

 debugfs_create_blob("devspec", 0400, dir, &ent->path);
 debugfs_create_file("access", 0600, dir, ent, &scom_debug_fops);

 return 0;
}
