
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int mode; int path; } ;
struct tree_desc {struct name_entry entry; scalar_t__ size; } ;


 int base_name_compare (int ,int ,int ,int ,int ,int ) ;
 int tree_entry_len (struct name_entry*) ;

__attribute__((used)) static int tree_entry_pathcmp(struct tree_desc *t1, struct tree_desc *t2)
{
 struct name_entry *e1, *e2;
 int cmp;


 if (!t1->size)
  return t2->size ? 1 : 0;
 else if (!t2->size)
  return -1;

 e1 = &t1->entry;
 e2 = &t2->entry;
 cmp = base_name_compare(e1->path, tree_entry_len(e1), e1->mode,
    e2->path, tree_entry_len(e2), e2->mode);
 return cmp;
}
