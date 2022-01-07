
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_filebuf ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;
struct TYPE_11__ {int id_str; } ;
typedef TYPE_3__ git_annotated_commit ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_FILEBUF_CREATE_LEADING_DIRS ;
 int GIT_FILEBUF_INIT ;
 int GIT_MERGE_FILE_MODE ;
 int GIT_MERGE_HEAD_FILE ;
 int assert (int) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_printf (int *,char*,int ) ;

__attribute__((used)) static int write_merge_head(
 git_repository *repo,
 const git_annotated_commit *heads[],
 size_t heads_len)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf file_path = GIT_BUF_INIT;
 size_t i;
 int error = 0;

 assert(repo && heads);

 if ((error = git_buf_joinpath(&file_path, repo->gitdir, GIT_MERGE_HEAD_FILE)) < 0 ||
  (error = git_filebuf_open(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_MERGE_FILE_MODE)) < 0)
  goto cleanup;

 for (i = 0; i < heads_len; i++) {
  if ((error = git_filebuf_printf(&file, "%s\n", heads[i]->id_str)) < 0)
   goto cleanup;
 }

 error = git_filebuf_commit(&file);

cleanup:
 if (error < 0)
  git_filebuf_cleanup(&file);

 git_buf_dispose(&file_path);

 return error;
}
