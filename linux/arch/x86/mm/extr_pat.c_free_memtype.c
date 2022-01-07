
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct memtype {int dummy; } ;
struct TYPE_4__ {int pid; int comm; } ;
struct TYPE_3__ {scalar_t__ (* is_untracked_pat_range ) (scalar_t__,scalar_t__) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct memtype*) ;
 TYPE_2__* current ;
 int dprintk (char*,scalar_t__,scalar_t__) ;
 int free_ram_pages_type (scalar_t__,scalar_t__) ;
 int kfree (struct memtype*) ;
 int memtype_lock ;
 int pat_enabled () ;
 int pat_pagerange_is_ram (scalar_t__,scalar_t__) ;
 int pr_info (char*,int ,int ,scalar_t__,scalar_t__) ;
 struct memtype* rbt_memtype_erase (scalar_t__,scalar_t__) ;
 scalar_t__ sanitize_phys (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__) ;
 TYPE_1__ x86_platform ;

int free_memtype(u64 start, u64 end)
{
 int err = -EINVAL;
 int is_range_ram;
 struct memtype *entry;

 if (!pat_enabled())
  return 0;

 start = sanitize_phys(start);
 end = sanitize_phys(end);


 if (x86_platform.is_untracked_pat_range(start, end))
  return 0;

 is_range_ram = pat_pagerange_is_ram(start, end);
 if (is_range_ram == 1) {

  err = free_ram_pages_type(start, end);

  return err;
 } else if (is_range_ram < 0) {
  return -EINVAL;
 }

 spin_lock(&memtype_lock);
 entry = rbt_memtype_erase(start, end);
 spin_unlock(&memtype_lock);

 if (IS_ERR(entry)) {
  pr_info("x86/PAT: %s:%d freeing invalid memtype [mem %#010Lx-%#010Lx]\n",
   current->comm, current->pid, start, end - 1);
  return -EINVAL;
 }

 kfree(entry);

 dprintk("free_memtype request [mem %#010Lx-%#010Lx]\n", start, end - 1);

 return 0;
}
