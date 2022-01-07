
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_content {unsigned int entry_count; int * entries; } ;


 int release_tree_content (struct tree_content*) ;
 int release_tree_entry (int ) ;

__attribute__((used)) static void release_tree_content_recursive(struct tree_content *t)
{
 unsigned int i;
 for (i = 0; i < t->entry_count; i++)
  release_tree_entry(t->entries[i]);
 release_tree_content(t);
}
