
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_filebuf ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_FILEBUF_CREATE_LEADING_DIRS ;
 int GIT_FILEBUF_INIT ;
 int GIT_MERGE_FILE_MODE ;
 int GIT_MERGE_MODE_FILE ;
 int assert (TYPE_1__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_write (int *,char*,int) ;

__attribute__((used)) static int write_merge_mode(git_repository *repo)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf file_path = GIT_BUF_INIT;
 int error = 0;

 assert(repo);

 if ((error = git_buf_joinpath(&file_path, repo->gitdir, GIT_MERGE_MODE_FILE)) < 0 ||
  (error = git_filebuf_open(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_MERGE_FILE_MODE)) < 0)
  goto cleanup;

 if ((error = git_filebuf_write(&file, "no-ff", 5)) < 0)
  goto cleanup;

 error = git_filebuf_commit(&file);

cleanup:
 if (error < 0)
  git_filebuf_cleanup(&file);

 git_buf_dispose(&file_path);

 return error;
}
