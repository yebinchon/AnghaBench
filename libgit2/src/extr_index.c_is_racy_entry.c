
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 scalar_t__ S_ISGITLINK (int ) ;
 int git_index_entry_newer_than_index (TYPE_1__ const*,int *) ;

__attribute__((used)) static bool is_racy_entry(git_index *index, const git_index_entry *entry)
{

 if (S_ISGITLINK(entry->mode))
  return 0;

 return git_index_entry_newer_than_index(entry, index);
}
