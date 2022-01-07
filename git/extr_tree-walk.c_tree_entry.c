
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int dummy; } ;
struct tree_desc {struct name_entry entry; int size; } ;


 int update_tree_entry (struct tree_desc*) ;

int tree_entry(struct tree_desc *desc, struct name_entry *entry)
{
 if (!desc->size)
  return 0;

 *entry = desc->entry;
 update_tree_entry(desc);
 return 1;
}
