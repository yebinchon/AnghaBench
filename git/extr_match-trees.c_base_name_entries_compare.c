
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int mode; int path; } ;


 int base_name_compare (int ,int ,int ,int ,int ,int ) ;
 int tree_entry_len (struct name_entry const*) ;

__attribute__((used)) static int base_name_entries_compare(const struct name_entry *a,
         const struct name_entry *b)
{
 return base_name_compare(a->path, tree_entry_len(a), a->mode,
     b->path, tree_entry_len(b), b->mode);
}
