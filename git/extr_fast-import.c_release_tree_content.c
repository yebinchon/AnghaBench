
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_content {int dummy; } ;
struct avail_tree_content {struct avail_tree_content* next_avail; int entry_capacity; } ;


 struct avail_tree_content** avail_tree_table ;
 unsigned int hc_entries (int ) ;

__attribute__((used)) static void release_tree_content(struct tree_content *t)
{
 struct avail_tree_content *f = (struct avail_tree_content*)t;
 unsigned int hc = hc_entries(f->entry_capacity);
 f->next_avail = avail_tree_table[hc];
 avail_tree_table[hc] = f;
}
