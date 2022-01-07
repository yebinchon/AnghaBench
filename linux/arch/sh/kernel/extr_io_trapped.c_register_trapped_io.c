
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapped_io {int num_resources; int list; int magic; scalar_t__ virt_base; struct resource* resource; } ;
struct resource {unsigned long flags; scalar_t__ start; } ;
struct page {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 int IO_TRAPPED_MAGIC ;
 int PAGE_NONE ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int TRAPPED_PAGES_MAX ;
 int VM_MAP ;
 int hweight_long (unsigned long) ;
 int list_add (int *,int *) ;
 int pr_info (char*,unsigned long,char*,unsigned long) ;
 int pr_warning (char*) ;
 int resource_size (struct resource*) ;
 scalar_t__ roundup (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trapped_io ;
 int trapped_io_disable ;
 int trapped_lock ;
 int trapped_mem ;
 scalar_t__ unlikely (int ) ;
 struct page* virt_to_page (struct trapped_io*) ;
 scalar_t__ vmap (struct page**,int,int ,int ) ;

int register_trapped_io(struct trapped_io *tiop)
{
 struct resource *res;
 unsigned long len = 0, flags = 0;
 struct page *pages[TRAPPED_PAGES_MAX];
 int k, n;

 if (unlikely(trapped_io_disable))
  return 0;


 if ((unsigned long)tiop & (PAGE_SIZE - 1))
  goto bad;

 for (k = 0; k < tiop->num_resources; k++) {
  res = tiop->resource + k;
  len += roundup(resource_size(res), PAGE_SIZE);
  flags |= res->flags;
 }


 if (hweight_long(flags) != 1)
  goto bad;

 n = len >> PAGE_SHIFT;

 if (n >= TRAPPED_PAGES_MAX)
  goto bad;

 for (k = 0; k < n; k++)
  pages[k] = virt_to_page(tiop);

 tiop->virt_base = vmap(pages, n, VM_MAP, PAGE_NONE);
 if (!tiop->virt_base)
  goto bad;

 len = 0;
 for (k = 0; k < tiop->num_resources; k++) {
  res = tiop->resource + k;
  pr_info("trapped io 0x%08lx overrides %s 0x%08lx\n",
         (unsigned long)(tiop->virt_base + len),
         res->flags & IORESOURCE_IO ? "io" : "mmio",
         (unsigned long)res->start);
  len += roundup(resource_size(res), PAGE_SIZE);
 }

 tiop->magic = IO_TRAPPED_MAGIC;
 INIT_LIST_HEAD(&tiop->list);
 spin_lock_irq(&trapped_lock);
 spin_unlock_irq(&trapped_lock);

 return 0;
 bad:
 pr_warning("unable to install trapped io filter\n");
 return -1;
}
