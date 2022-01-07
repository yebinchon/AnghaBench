
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector_cmp ;
typedef int git_vector ;


 int index_find_in_entries (size_t*,int *,int ,char const*,size_t,int) ;

int git_index_snapshot_find(
 size_t *out, git_vector *entries, git_vector_cmp entry_srch,
 const char *path, size_t path_len, int stage)
{
 return index_find_in_entries(out, entries, entry_srch, path, path_len, stage);
}
