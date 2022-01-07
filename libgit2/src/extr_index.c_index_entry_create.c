
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct stat {int st_mode; } ;
struct TYPE_2__ {int path; } ;
struct entry_internal {size_t pathlen; int path; TYPE_1__ entry; } ;
typedef int git_repository ;
typedef int git_index_entry ;


 int GIT_ERROR_CHECK_ALLOC (struct entry_internal*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_INDEX ;
 unsigned int GIT_PATH_REJECT_INDEX_DEFAULTS ;
 unsigned int GIT_PATH_REJECT_WORKDIR_DEFAULTS ;
 struct entry_internal* git__calloc (int,size_t) ;
 int git_error_set (int ,char*,char const*) ;
 int git_path_isvalid (int *,char const*,int ,unsigned int) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int index_entry_create(
 git_index_entry **out,
 git_repository *repo,
 const char *path,
 struct stat *st,
 bool from_workdir)
{
 size_t pathlen = strlen(path), alloclen;
 struct entry_internal *entry;
 unsigned int path_valid_flags = GIT_PATH_REJECT_INDEX_DEFAULTS;
 uint16_t mode = 0;





 if (from_workdir)
  path_valid_flags |= GIT_PATH_REJECT_WORKDIR_DEFAULTS;
 if (st)
  mode = st->st_mode;

 if (!git_path_isvalid(repo, path, mode, path_valid_flags)) {
  git_error_set(GIT_ERROR_INDEX, "invalid path: '%s'", path);
  return -1;
 }

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, sizeof(struct entry_internal), pathlen);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, alloclen, 1);
 entry = git__calloc(1, alloclen);
 GIT_ERROR_CHECK_ALLOC(entry);

 entry->pathlen = pathlen;
 memcpy(entry->path, path, pathlen);
 entry->entry.path = entry->path;

 *out = (git_index_entry *)entry;
 return 0;
}
