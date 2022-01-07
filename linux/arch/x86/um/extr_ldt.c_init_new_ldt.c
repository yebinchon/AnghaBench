
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct user_desc {short entry_number; } ;
struct TYPE_4__ {struct ldt_entry** pages; struct ldt_entry* entries; } ;
struct TYPE_5__ {int entry_count; int lock; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ ldt; } ;
struct mm_context {TYPE_3__ arch; int id; } ;
struct ldt_entry {int dummy; } ;
typedef int desc ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int LDT_DIRECT_ENTRIES ;
 int LDT_ENTRIES_PER_PAGE ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 long __get_free_page (int) ;
 short* host_ldt_entries ;
 int ldt_get_host_info () ;
 int memcpy (struct ldt_entry*,struct ldt_entry*,int) ;
 int memset (struct user_desc*,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long write_ldt_entry (int *,int,struct user_desc*,void**,int) ;

long init_new_ldt(struct mm_context *new_mm, struct mm_context *from_mm)
{
 struct user_desc desc;
 short * num_p;
 int i;
 long page, err=0;
 void *addr = ((void*)0);


 mutex_init(&new_mm->arch.ldt.lock);

 if (!from_mm) {
  memset(&desc, 0, sizeof(desc));





  ldt_get_host_info();
  for (num_p=host_ldt_entries; *num_p != -1; num_p++) {
   desc.entry_number = *num_p;
   err = write_ldt_entry(&new_mm->id, 1, &desc,
           &addr, *(num_p + 1) == -1);
   if (err)
    break;
  }
  new_mm->arch.ldt.entry_count = 0;

  goto out;
 }







 mutex_lock(&from_mm->arch.ldt.lock);
 if (from_mm->arch.ldt.entry_count <= LDT_DIRECT_ENTRIES)
  memcpy(new_mm->arch.ldt.u.entries, from_mm->arch.ldt.u.entries,
         sizeof(new_mm->arch.ldt.u.entries));
 else {
  i = from_mm->arch.ldt.entry_count / LDT_ENTRIES_PER_PAGE;
  while (i-->0) {
   page = __get_free_page(GFP_KERNEL|__GFP_ZERO);
   if (!page) {
    err = -ENOMEM;
    break;
   }
   new_mm->arch.ldt.u.pages[i] =
    (struct ldt_entry *) page;
   memcpy(new_mm->arch.ldt.u.pages[i],
          from_mm->arch.ldt.u.pages[i], PAGE_SIZE);
  }
 }
 new_mm->arch.ldt.entry_count = from_mm->arch.ldt.entry_count;
 mutex_unlock(&from_mm->arch.ldt.lock);

    out:
 return err;
}
