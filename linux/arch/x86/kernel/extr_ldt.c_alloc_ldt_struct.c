
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldt_struct {int slot; unsigned int nr_entries; void* entries; } ;
struct desc_struct {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 unsigned int LDT_ENTRIES ;
 int LDT_ENTRY_SIZE ;
 unsigned int PAGE_SIZE ;
 scalar_t__ get_zeroed_page (int ) ;
 int kfree (struct ldt_struct*) ;
 struct ldt_struct* kmalloc (int,int ) ;
 void* vzalloc (unsigned int) ;

__attribute__((used)) static struct ldt_struct *alloc_ldt_struct(unsigned int num_entries)
{
 struct ldt_struct *new_ldt;
 unsigned int alloc_size;

 if (num_entries > LDT_ENTRIES)
  return ((void*)0);

 new_ldt = kmalloc(sizeof(struct ldt_struct), GFP_KERNEL);
 if (!new_ldt)
  return ((void*)0);

 BUILD_BUG_ON(LDT_ENTRY_SIZE != sizeof(struct desc_struct));
 alloc_size = num_entries * LDT_ENTRY_SIZE;







 if (alloc_size > PAGE_SIZE)
  new_ldt->entries = vzalloc(alloc_size);
 else
  new_ldt->entries = (void *)get_zeroed_page(GFP_KERNEL);

 if (!new_ldt->entries) {
  kfree(new_ldt);
  return ((void*)0);
 }


 new_ldt->slot = -1;

 new_ldt->nr_entries = num_entries;
 return new_ldt;
}
