
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_content {scalar_t__ entry_count; int entries; int delta_depth; } ;


 int COPY_ARRAY (int ,int ,scalar_t__) ;
 struct tree_content* new_tree_content (scalar_t__) ;
 int release_tree_content (struct tree_content*) ;

__attribute__((used)) static struct tree_content *grow_tree_content(
 struct tree_content *t,
 int amt)
{
 struct tree_content *r = new_tree_content(t->entry_count + amt);
 r->entry_count = t->entry_count;
 r->delta_depth = t->delta_depth;
 COPY_ARRAY(r->entries, t->entries, t->entry_count);
 release_tree_content(t);
 return r;
}
