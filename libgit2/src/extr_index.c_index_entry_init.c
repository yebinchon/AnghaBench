
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct stat {int dummy; } ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_13__ {int id; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_14__ {int distrust_filemode; } ;
typedef TYPE_2__ git_index ;
struct TYPE_15__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_EBAREREPO ;
 int * INDEX_OWNER (TYPE_2__*) ;
 int create_index_error (int,char*) ;
 int git_blob__create_from_paths (int *,struct stat*,int *,int *,char const*,int ,int) ;
 int git_buf_dispose (TYPE_3__*) ;
 scalar_t__ git_buf_joinpath (TYPE_3__*,int ,char const*) ;
 int git_index_entry__init_from_stat (TYPE_1__*,struct stat*,int) ;
 int git_path_lstat (int ,struct stat*) ;
 scalar_t__ git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_workdir (int *) ;
 scalar_t__ index_entry_create (TYPE_1__**,int *,char const*,struct stat*,int) ;
 int index_entry_free (TYPE_1__*) ;

__attribute__((used)) static int index_entry_init(
 git_index_entry **entry_out,
 git_index *index,
 const char *rel_path)
{
 int error = 0;
 git_index_entry *entry = ((void*)0);
 git_buf path = GIT_BUF_INIT;
 struct stat st;
 git_oid oid;
 git_repository *repo;

 if (INDEX_OWNER(index) == ((void*)0))
  return create_index_error(-1,
   "could not initialize index entry. "
   "Index is not backed up by an existing repository.");






 repo = INDEX_OWNER(index);
 if (git_repository__ensure_not_bare(repo, "create blob from file") < 0)
  return GIT_EBAREREPO;

 if (git_buf_joinpath(&path, git_repository_workdir(repo), rel_path) < 0)
  return -1;

 error = git_path_lstat(path.ptr, &st);
 git_buf_dispose(&path);

 if (error < 0)
  return error;

 if (index_entry_create(&entry, INDEX_OWNER(index), rel_path, &st, 1) < 0)
  return -1;


 error = git_blob__create_from_paths(
  &oid, &st, INDEX_OWNER(index), ((void*)0), rel_path, 0, 1);

 if (error < 0) {
  index_entry_free(entry);
  return error;
 }

 entry->id = oid;
 git_index_entry__init_from_stat(entry, &st, !index->distrust_filemode);

 *entry_out = (git_index_entry *)entry;
 return 0;
}
