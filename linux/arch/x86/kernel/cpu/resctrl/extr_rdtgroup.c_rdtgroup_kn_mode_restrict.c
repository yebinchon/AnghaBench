
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdtgroup {int kn; } ;
struct kernfs_node {int dummy; } ;
struct iattr {int ia_mode; int ia_valid; } ;


 int ATTR_MODE ;
 int ENOENT ;



 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFREG ;
 struct kernfs_node* kernfs_find_and_get_ns (int ,char const*,int *) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_setattr (struct kernfs_node*,struct iattr*) ;
 int kernfs_type (struct kernfs_node*) ;

int rdtgroup_kn_mode_restrict(struct rdtgroup *r, const char *name)
{
 struct iattr iattr = {.ia_valid = ATTR_MODE,};
 struct kernfs_node *kn;
 int ret = 0;

 kn = kernfs_find_and_get_ns(r->kn, name, ((void*)0));
 if (!kn)
  return -ENOENT;

 switch (kernfs_type(kn)) {
 case 130:
  iattr.ia_mode = S_IFDIR;
  break;
 case 129:
  iattr.ia_mode = S_IFREG;
  break;
 case 128:
  iattr.ia_mode = S_IFLNK;
  break;
 }

 ret = kernfs_setattr(kn, &iattr);
 kernfs_put(kn);
 return ret;
}
