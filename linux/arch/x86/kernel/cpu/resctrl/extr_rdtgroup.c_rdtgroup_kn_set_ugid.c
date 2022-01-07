
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int dummy; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; } ;


 int ATTR_GID ;
 int ATTR_UID ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int current_fsgid () ;
 int current_fsuid () ;
 scalar_t__ gid_eq (int ,int ) ;
 int kernfs_setattr (struct kernfs_node*,struct iattr*) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int rdtgroup_kn_set_ugid(struct kernfs_node *kn)
{
 struct iattr iattr = { .ia_valid = ATTR_UID | ATTR_GID,
    .ia_uid = current_fsuid(),
    .ia_gid = current_fsgid(), };

 if (uid_eq(iattr.ia_uid, GLOBAL_ROOT_UID) &&
     gid_eq(iattr.ia_gid, GLOBAL_ROOT_GID))
  return 0;

 return kernfs_setattr(kn, &iattr);
}
