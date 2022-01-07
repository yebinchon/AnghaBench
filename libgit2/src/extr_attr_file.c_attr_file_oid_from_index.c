
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_oid ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;


 int GIT_ENOTFOUND ;
 int git_index__find_pos (size_t*,int *,char const*,int ,int ) ;
 TYPE_1__* git_index_get_byindex (int *,size_t) ;
 int git_repository_index__weakptr (int **,int *) ;

__attribute__((used)) static int attr_file_oid_from_index(
 git_oid *oid, git_repository *repo, const char *path)
{
 int error;
 git_index *idx;
 size_t pos;
 const git_index_entry *entry;

 if ((error = git_repository_index__weakptr(&idx, repo)) < 0 ||
  (error = git_index__find_pos(&pos, idx, path, 0, 0)) < 0)
  return error;

 if (!(entry = git_index_get_byindex(idx, pos)))
  return GIT_ENOTFOUND;

 *oid = entry->id;
 return 0;
}
