
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent_path; int tree_entry; } ;
typedef TYPE_1__ tree_iterator_entry ;


 int git__strcmp (scalar_t__,scalar_t__) ;
 int tree_entry_cmp (int ,int ,int) ;

__attribute__((used)) static int tree_iterator_entry_sort_icase(const void *ptr_a, const void *ptr_b)
{
 const tree_iterator_entry *a = (const tree_iterator_entry *)ptr_a;
 const tree_iterator_entry *b = (const tree_iterator_entry *)ptr_b;

 int c = tree_entry_cmp(a->tree_entry, b->tree_entry, 1);





 if (!c && a->parent_path != b->parent_path)
  c = git__strcmp(a->parent_path, b->parent_path);

 if (!c)
  c = tree_entry_cmp(a->tree_entry, b->tree_entry, 0);

 return c;
}
