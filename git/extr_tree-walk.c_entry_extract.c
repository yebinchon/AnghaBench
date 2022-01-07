
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int dummy; } ;
struct tree_desc {struct name_entry entry; } ;



__attribute__((used)) static void entry_extract(struct tree_desc *t, struct name_entry *a)
{
 *a = t->entry;
}
