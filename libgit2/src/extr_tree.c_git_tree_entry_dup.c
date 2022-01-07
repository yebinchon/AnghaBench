
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attr; int oid; int filename_len; int filename; } ;
typedef TYPE_1__ git_tree_entry ;


 TYPE_1__* alloc_entry (int ,int ,int ) ;
 int assert (TYPE_1__ const*) ;

int git_tree_entry_dup(git_tree_entry **dest, const git_tree_entry *source)
{
 git_tree_entry *cpy;

 assert(source);

 cpy = alloc_entry(source->filename, source->filename_len, source->oid);
 if (cpy == ((void*)0))
  return -1;

 cpy->attr = source->attr;

 *dest = cpy;
 return 0;
}
