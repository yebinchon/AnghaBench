
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct rftype {int mode; int name; } ;
struct rdtgroup {int kn; } ;
struct kernfs_node {int mode; } ;
struct iattr {int ia_mode; int ia_valid; } ;


 int ARRAY_SIZE (struct rftype*) ;
 int ATTR_MODE ;
 int ENOENT ;



 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFREG ;
 struct kernfs_node* kernfs_find_and_get_ns (int ,char const*,int *) ;
 struct kernfs_node* kernfs_get_parent (struct kernfs_node*) ;
 int kernfs_put (struct kernfs_node*) ;
 int kernfs_setattr (struct kernfs_node*,struct iattr*) ;
 int kernfs_type (struct kernfs_node*) ;
 struct rftype* res_common_files ;
 int strcmp (int ,char const*) ;

int rdtgroup_kn_mode_restore(struct rdtgroup *r, const char *name,
        umode_t mask)
{
 struct iattr iattr = {.ia_valid = ATTR_MODE,};
 struct kernfs_node *kn, *parent;
 struct rftype *rfts, *rft;
 int ret, len;

 rfts = res_common_files;
 len = ARRAY_SIZE(res_common_files);

 for (rft = rfts; rft < rfts + len; rft++) {
  if (!strcmp(rft->name, name))
   iattr.ia_mode = rft->mode & mask;
 }

 kn = kernfs_find_and_get_ns(r->kn, name, ((void*)0));
 if (!kn)
  return -ENOENT;

 switch (kernfs_type(kn)) {
 case 130:
  parent = kernfs_get_parent(kn);
  if (parent) {
   iattr.ia_mode |= parent->mode;
   kernfs_put(parent);
  }
  iattr.ia_mode |= S_IFDIR;
  break;
 case 129:
  iattr.ia_mode |= S_IFREG;
  break;
 case 128:
  iattr.ia_mode |= S_IFLNK;
  break;
 }

 ret = kernfs_setattr(kn, &iattr);
 kernfs_put(kn);
 return ret;
}
