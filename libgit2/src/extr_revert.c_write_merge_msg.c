
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_filebuf ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_FILEBUF_CREATE_LEADING_DIRS ;
 int GIT_FILEBUF_INIT ;
 int GIT_MERGE_MSG_FILE ;
 int GIT_REVERT_FILE_MODE ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_printf (int *,char*,char const*,char const*) ;

__attribute__((used)) static int write_merge_msg(
 git_repository *repo,
 const char *commit_oidstr,
 const char *commit_msgline)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf file_path = GIT_BUF_INIT;
 int error = 0;

 if ((error = git_buf_joinpath(&file_path, repo->gitdir, GIT_MERGE_MSG_FILE)) < 0 ||
  (error = git_filebuf_open(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_REVERT_FILE_MODE)) < 0 ||
  (error = git_filebuf_printf(&file, "Revert \"%s\"\n\nThis reverts commit %s.\n",
  commit_msgline, commit_oidstr)) < 0)
  goto cleanup;

 error = git_filebuf_commit(&file);

cleanup:
 if (error < 0)
  git_filebuf_cleanup(&file);

 git_buf_dispose(&file_path);

 return error;
}
