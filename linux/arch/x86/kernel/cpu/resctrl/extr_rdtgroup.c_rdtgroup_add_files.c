
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rftype {unsigned long fflags; int name; } ;
struct kernfs_node {int dummy; } ;


 int ARRAY_SIZE (struct rftype*) ;
 int kernfs_remove_by_name (struct kernfs_node*,int ) ;
 int lockdep_assert_held (int *) ;
 int pr_warn (char*,int ,int) ;
 int rdtgroup_add_file (struct kernfs_node*,struct rftype*) ;
 int rdtgroup_mutex ;
 struct rftype* res_common_files ;

__attribute__((used)) static int rdtgroup_add_files(struct kernfs_node *kn, unsigned long fflags)
{
 struct rftype *rfts, *rft;
 int ret, len;

 rfts = res_common_files;
 len = ARRAY_SIZE(res_common_files);

 lockdep_assert_held(&rdtgroup_mutex);

 for (rft = rfts; rft < rfts + len; rft++) {
  if ((fflags & rft->fflags) == rft->fflags) {
   ret = rdtgroup_add_file(kn, rft);
   if (ret)
    goto error;
  }
 }

 return 0;
error:
 pr_warn("Failed to add %s, err=%d\n", rft->name, ret);
 while (--rft >= rfts) {
  if ((fflags & rft->fflags) == rft->fflags)
   kernfs_remove_by_name(kn, rft->name);
 }
 return ret;
}
