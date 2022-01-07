
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_entry {scalar_t__ tree; } ;


 struct tree_entry* avail_tree_entry ;
 int release_tree_content_recursive (scalar_t__) ;

__attribute__((used)) static void release_tree_entry(struct tree_entry *e)
{
 if (e->tree)
  release_tree_content_recursive(e->tree);
 *((void**)e) = avail_tree_entry;
 avail_tree_entry = e;
}
