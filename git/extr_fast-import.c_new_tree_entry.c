
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_entry {int dummy; } ;


 int ALLOC_ARRAY (struct tree_entry*,unsigned int) ;
 struct tree_entry* avail_tree_entry ;
 unsigned int tree_entry_alloc ;
 unsigned int tree_entry_allocd ;

__attribute__((used)) static struct tree_entry *new_tree_entry(void)
{
 struct tree_entry *e;

 if (!avail_tree_entry) {
  unsigned int n = tree_entry_alloc;
  tree_entry_allocd += n * sizeof(struct tree_entry);
  ALLOC_ARRAY(e, n);
  avail_tree_entry = e;
  while (n-- > 1) {
   *((void**)e) = e + 1;
   e++;
  }
  *((void**)e) = ((void*)0);
 }

 e = avail_tree_entry;
 avail_tree_entry = *((void**)e);
 return e;
}
