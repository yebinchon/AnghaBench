
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int attr; } ;
typedef TYPE_1__ git_tree_entry ;
typedef int git_object_t ;


 int GIT_OBJECT_BLOB ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_TREE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISGITLINK (int ) ;
 int assert (TYPE_1__ const*) ;

git_object_t git_tree_entry_type(const git_tree_entry *entry)
{
 assert(entry);

 if (S_ISGITLINK(entry->attr))
  return GIT_OBJECT_COMMIT;
 else if (S_ISDIR(entry->attr))
  return GIT_OBJECT_TREE;
 else
  return GIT_OBJECT_BLOB;
}
