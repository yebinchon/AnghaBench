
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct kernfs_node {int parent; } ;
struct TYPE_2__ {struct kernfs_node* kn; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ is_mon_groups (struct kernfs_node*,char const*) ;
 scalar_t__ rdt_alloc_capable ;
 scalar_t__ rdt_mon_capable ;
 TYPE_1__ rdtgroup_default ;
 int rdtgroup_mkdir_ctrl_mon (struct kernfs_node*,struct kernfs_node*,char const*,int ) ;
 int rdtgroup_mkdir_mon (struct kernfs_node*,int ,char const*,int ) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int rdtgroup_mkdir(struct kernfs_node *parent_kn, const char *name,
     umode_t mode)
{

 if (strchr(name, '\n'))
  return -EINVAL;






 if (rdt_alloc_capable && parent_kn == rdtgroup_default.kn)
  return rdtgroup_mkdir_ctrl_mon(parent_kn, parent_kn, name, mode);





 if (rdt_mon_capable && is_mon_groups(parent_kn, name))
  return rdtgroup_mkdir_mon(parent_kn, parent_kn->parent, name, mode);

 return -EPERM;
}
