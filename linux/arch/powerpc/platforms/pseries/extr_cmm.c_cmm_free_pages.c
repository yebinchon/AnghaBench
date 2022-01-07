
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmm_page_array {size_t index; unsigned long* page; struct cmm_page_array* next; } ;


 int __pa (unsigned long) ;
 int cmm_dbg (char*,long) ;
 int cmm_lock ;
 struct cmm_page_array* cmm_page_list ;
 int free_page (unsigned long) ;
 int loaned_pages ;
 int plpar_page_set_active (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int totalram_pages_inc () ;

__attribute__((used)) static long cmm_free_pages(long nr)
{
 struct cmm_page_array *pa;
 unsigned long addr;

 cmm_dbg("Begin free of %ld pages.\n", nr);
 spin_lock(&cmm_lock);
 pa = cmm_page_list;
 while (nr) {
  if (!pa || pa->index <= 0)
   break;
  addr = pa->page[--pa->index];

  if (pa->index == 0) {
   pa = pa->next;
   free_page((unsigned long) cmm_page_list);
   cmm_page_list = pa;
  }

  plpar_page_set_active(__pa(addr));
  free_page(addr);
  loaned_pages--;
  nr--;
  totalram_pages_inc();
 }
 spin_unlock(&cmm_lock);
 cmm_dbg("End request with %ld pages unfulfilled\n", nr);
 return nr;
}
