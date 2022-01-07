
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rdt_resource {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct TYPE_3__ {int mode; } ;


 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 int kernfs_activate (struct kernfs_node*) ;
 struct kernfs_node* kernfs_create_dir (TYPE_1__*,char*,int ,struct rdt_resource*) ;
 int kernfs_get (struct kernfs_node*) ;
 TYPE_1__* kn_info ;
 int rdtgroup_add_files (struct kernfs_node*,unsigned long) ;
 int rdtgroup_kn_set_ugid (struct kernfs_node*) ;

__attribute__((used)) static int rdtgroup_mkdir_info_resdir(struct rdt_resource *r, char *name,
          unsigned long fflags)
{
 struct kernfs_node *kn_subdir;
 int ret;

 kn_subdir = kernfs_create_dir(kn_info, name,
          kn_info->mode, r);
 if (IS_ERR(kn_subdir))
  return PTR_ERR(kn_subdir);

 kernfs_get(kn_subdir);
 ret = rdtgroup_kn_set_ugid(kn_subdir);
 if (ret)
  return ret;

 ret = rdtgroup_add_files(kn_subdir, fflags);
 if (!ret)
  kernfs_activate(kn_subdir);

 return ret;
}
