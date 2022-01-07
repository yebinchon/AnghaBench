
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;


 scalar_t__ GIT_INDEX_ENTRY_STAGE (int const*) ;

int git_index_entry_is_conflict(const git_index_entry *entry)
{
 return (GIT_INDEX_ENTRY_STAGE(entry) > 0);
}
