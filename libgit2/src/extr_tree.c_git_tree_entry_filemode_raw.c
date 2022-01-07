
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attr; } ;
typedef TYPE_1__ git_tree_entry ;
typedef int git_filemode_t ;



git_filemode_t git_tree_entry_filemode_raw(const git_tree_entry *entry)
{
 return entry->attr;
}
