
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct name_entry {int dummy; } ;


 int init_tree_desc (struct tree_desc*,void const*,size_t) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static void check_tree(const void *buf, size_t size)
{
 struct tree_desc desc;
 struct name_entry entry;

 init_tree_desc(&desc, buf, size);
 while (tree_entry(&desc, &entry))


  ;
}
