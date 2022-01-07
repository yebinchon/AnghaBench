
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_EEXISTS ;
 int GIT_ERROR_INDEX ;
 int GIT_INDEX_ENTRY_STAGE (TYPE_1__ const*) ;
 int GIT_UNUSED (void**) ;
 int git_error_set (int ,char*,int ,int ) ;

__attribute__((used)) static int index_no_dups(void **old, void *new)
{
 const git_index_entry *entry = new;
 GIT_UNUSED(old);
 git_error_set(GIT_ERROR_INDEX, "'%s' appears multiple times at stage %d",
  entry->path, GIT_INDEX_ENTRY_STAGE(entry));
 return GIT_EEXISTS;
}
