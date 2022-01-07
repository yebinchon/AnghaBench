
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int git__prefixcmp (char const*,char const*) ;
 int git_blob__create_from_paths (int *,int *,int *,char*,char const*,int ,int) ;
 char* git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_path_prettify (int *,char const*,int *) ;
 char* git_repository_workdir (int *) ;
 int strlen (char const*) ;

int git_blob_create_from_disk(
 git_oid *id, git_repository *repo, const char *path)
{
 int error;
 git_buf full_path = GIT_BUF_INIT;
 const char *workdir, *hintpath;

 if ((error = git_path_prettify(&full_path, path, ((void*)0))) < 0) {
  git_buf_dispose(&full_path);
  return error;
 }

 hintpath = git_buf_cstr(&full_path);
 workdir = git_repository_workdir(repo);

 if (workdir && !git__prefixcmp(hintpath, workdir))
  hintpath += strlen(workdir);

 error = git_blob__create_from_paths(
  id, ((void*)0), repo, git_buf_cstr(&full_path), hintpath, 0, 1);

 git_buf_dispose(&full_path);
 return error;
}
