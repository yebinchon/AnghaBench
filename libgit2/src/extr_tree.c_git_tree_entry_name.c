
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* filename; } ;
typedef TYPE_1__ git_tree_entry ;


 int assert (TYPE_1__ const*) ;

const char *git_tree_entry_name(const git_tree_entry *entry)
{
 assert(entry);
 return entry->filename;
}
