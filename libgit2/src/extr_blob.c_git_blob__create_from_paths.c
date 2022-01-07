
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {scalar_t__ st_mode; scalar_t__ st_size; } ;
typedef int st ;
typedef scalar_t__ mode_t ;
typedef int git_repository ;
typedef int git_oid ;
typedef scalar_t__ git_off_t ;
typedef int git_odb ;
typedef int git_filter_list ;
struct TYPE_5__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_EBAREREPO ;
 int GIT_EDIRECTORY ;
 int GIT_ERROR_ODB ;
 int GIT_FILTER_DEFAULT ;
 int GIT_FILTER_TO_ODB ;
 scalar_t__ S_ISDIR (scalar_t__) ;
 scalar_t__ S_ISLNK (scalar_t__) ;
 int assert (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_error_set (int ,char*,char const*) ;
 int git_filter_list_free (int *) ;
 int git_filter_list_load (int **,int *,int *,char const*,int ,int ) ;
 int git_odb_free (int *) ;
 int git_path_lstat (char const*,struct stat*) ;
 scalar_t__ git_repository__ensure_not_bare (int *,char*) ;
 int git_repository_odb (int **,int *) ;
 int git_repository_workdir (int *) ;
 int memcpy (struct stat*,struct stat*,int) ;
 int write_file_filtered (int *,scalar_t__*,int *,char const*,int *) ;
 int write_file_stream (int *,int *,char const*,scalar_t__) ;
 int write_symlink (int *,int *,char const*,size_t) ;

int git_blob__create_from_paths(
 git_oid *id,
 struct stat *out_st,
 git_repository *repo,
 const char *content_path,
 const char *hint_path,
 mode_t hint_mode,
 bool try_load_filters)
{
 int error;
 struct stat st;
 git_odb *odb = ((void*)0);
 git_off_t size;
 mode_t mode;
 git_buf path = GIT_BUF_INIT;

 assert(hint_path || !try_load_filters);

 if (!content_path) {
  if (git_repository__ensure_not_bare(repo, "create blob from file") < 0)
   return GIT_EBAREREPO;

  if (git_buf_joinpath(
    &path, git_repository_workdir(repo), hint_path) < 0)
   return -1;

  content_path = path.ptr;
 }

 if ((error = git_path_lstat(content_path, &st)) < 0 ||
  (error = git_repository_odb(&odb, repo)) < 0)
  goto done;

 if (S_ISDIR(st.st_mode)) {
  git_error_set(GIT_ERROR_ODB, "cannot create blob from '%s': it is a directory", content_path);
  error = GIT_EDIRECTORY;
  goto done;
 }

 if (out_st)
  memcpy(out_st, &st, sizeof(st));

 size = st.st_size;
 mode = hint_mode ? hint_mode : st.st_mode;

 if (S_ISLNK(mode)) {
  error = write_symlink(id, odb, content_path, (size_t)size);
 } else {
  git_filter_list *fl = ((void*)0);

  if (try_load_filters)

   error = git_filter_list_load(
    &fl, repo, ((void*)0), hint_path,
    GIT_FILTER_TO_ODB, GIT_FILTER_DEFAULT);

  if (error < 0)
                               ;
  else if (fl == ((void*)0))


   error = write_file_stream(id, odb, content_path, size);
  else {

   error = write_file_filtered(id, &size, odb, content_path, fl);

   git_filter_list_free(fl);
  }
 }

done:
 git_odb_free(odb);
 git_buf_dispose(&path);

 return error;
}
