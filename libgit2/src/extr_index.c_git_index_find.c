
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_6__ {scalar_t__ (* entries_cmp_path ) (int ,char const*) ;int entries; int entries_search_path; } ;
typedef TYPE_2__ git_index ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INDEX ;
 int assert (int) ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ git_vector_bsearch2 (size_t*,int *,int ,char const*) ;
 TYPE_1__* git_vector_get (int *,size_t) ;
 scalar_t__ stub1 (int ,char const*) ;

int git_index_find(size_t *at_pos, git_index *index, const char *path)
{
 size_t pos;

 assert(index && path);

 if (git_vector_bsearch2(
   &pos, &index->entries, index->entries_search_path, path) < 0) {
  git_error_set(GIT_ERROR_INDEX, "index does not contain %s", path);
  return GIT_ENOTFOUND;
 }




 for (; pos > 0; --pos) {
  const git_index_entry *prev = git_vector_get(&index->entries, pos - 1);

  if (index->entries_cmp_path(prev->path, path) != 0)
   break;
 }

 if (at_pos)
  *at_pos = pos;

 return 0;
}
