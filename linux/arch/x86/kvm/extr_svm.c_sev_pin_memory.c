
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct kvm_sev_info {unsigned long pages_locked; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;


 int CAP_IPC_LOCK ;
 int FOLL_WRITE ;
 int GFP_KERNEL_ACCOUNT ;
 int PAGE_KERNEL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int RLIMIT_MEMLOCK ;
 int __GFP_ZERO ;
 struct page** __vmalloc (unsigned long,int,int ) ;
 int capable (int ) ;
 unsigned long get_user_pages_fast (unsigned long,unsigned long,int ,struct page**) ;
 struct page** kmalloc (unsigned long,int) ;
 int kvfree (struct page**) ;
 int pr_err (char*,unsigned long,...) ;
 int release_pages (struct page**,unsigned long) ;
 unsigned long rlimit (int ) ;
 TYPE_1__* to_kvm_svm (struct kvm*) ;

__attribute__((used)) static struct page **sev_pin_memory(struct kvm *kvm, unsigned long uaddr,
        unsigned long ulen, unsigned long *n,
        int write)
{
 struct kvm_sev_info *sev = &to_kvm_svm(kvm)->sev_info;
 unsigned long npages, npinned, size;
 unsigned long locked, lock_limit;
 struct page **pages;
 unsigned long first, last;

 if (ulen == 0 || uaddr + ulen < uaddr)
  return ((void*)0);


 first = (uaddr & PAGE_MASK) >> PAGE_SHIFT;
 last = ((uaddr + ulen - 1) & PAGE_MASK) >> PAGE_SHIFT;
 npages = (last - first + 1);

 locked = sev->pages_locked + npages;
 lock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
 if (locked > lock_limit && !capable(CAP_IPC_LOCK)) {
  pr_err("SEV: %lu locked pages exceed the lock limit of %lu.\n", locked, lock_limit);
  return ((void*)0);
 }


 size = npages * sizeof(struct page *);
 if (size > PAGE_SIZE)
  pages = __vmalloc(size, GFP_KERNEL_ACCOUNT | __GFP_ZERO,
      PAGE_KERNEL);
 else
  pages = kmalloc(size, GFP_KERNEL_ACCOUNT);

 if (!pages)
  return ((void*)0);


 npinned = get_user_pages_fast(uaddr, npages, FOLL_WRITE, pages);
 if (npinned != npages) {
  pr_err("SEV: Failure locking %lu pages.\n", npages);
  goto err;
 }

 *n = npages;
 sev->pages_locked = locked;

 return pages;

err:
 if (npinned > 0)
  release_pages(pages, npinned);

 kvfree(pages);
 return ((void*)0);
}
