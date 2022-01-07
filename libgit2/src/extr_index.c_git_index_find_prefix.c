
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_7__ {int entries; } ;
typedef TYPE_2__ git_index ;


 int GIT_ENOTFOUND ;
 int GIT_INDEX_STAGE_ANY ;
 scalar_t__ git__prefixcmp (int ,char const*) ;
 TYPE_1__* git_vector_get (int *,size_t) ;
 int index_find (size_t*,TYPE_2__*,char const*,int ,int ) ;
 int strlen (char const*) ;

int git_index_find_prefix(size_t *at_pos, git_index *index, const char *prefix)
{
 int error = 0;
 size_t pos;
 const git_index_entry *entry;

 index_find(&pos, index, prefix, strlen(prefix), GIT_INDEX_STAGE_ANY);
 entry = git_vector_get(&index->entries, pos);
 if (!entry || git__prefixcmp(entry->path, prefix) != 0)
  error = GIT_ENOTFOUND;

 if (!error && at_pos)
  *at_pos = pos;

 return error;
}
