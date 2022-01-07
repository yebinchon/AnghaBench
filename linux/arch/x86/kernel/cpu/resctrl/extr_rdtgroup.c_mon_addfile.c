
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct kernfs_node*) ;
 int PTR_ERR (struct kernfs_node*) ;
 struct kernfs_node* __kernfs_create_file (struct kernfs_node*,char const*,int,int ,int ,int ,int *,void*,int *,int *) ;
 int kernfs_remove (struct kernfs_node*) ;
 int kf_mondata_ops ;
 int rdtgroup_kn_set_ugid (struct kernfs_node*) ;

__attribute__((used)) static int mon_addfile(struct kernfs_node *parent_kn, const char *name,
         void *priv)
{
 struct kernfs_node *kn;
 int ret = 0;

 kn = __kernfs_create_file(parent_kn, name, 0444,
      GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, 0,
      &kf_mondata_ops, priv, ((void*)0), ((void*)0));
 if (IS_ERR(kn))
  return PTR_ERR(kn);

 ret = rdtgroup_kn_set_ugid(kn);
 if (ret) {
  kernfs_remove(kn);
  return ret;
 }

 return ret;
}
