
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int gitdir; } ;
typedef TYPE_1__ git_repository ;
typedef int git_oid ;
typedef int git_filebuf ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_FILEBUF_CREATE_LEADING_DIRS ;
 int GIT_FILEBUF_INIT ;
 int GIT_MERGE_FILE_MODE ;
 int GIT_OID_HEXSZ ;
 int GIT_ORIG_HEAD_FILE ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_printf (int *,char*,int,char*) ;
 int git_oid_fmt (char*,int const*) ;

int git_repository__set_orig_head(git_repository *repo, const git_oid *orig_head)
{
 git_filebuf file = GIT_FILEBUF_INIT;
 git_buf file_path = GIT_BUF_INIT;
 char orig_head_str[GIT_OID_HEXSZ];
 int error = 0;

 git_oid_fmt(orig_head_str, orig_head);

 if ((error = git_buf_joinpath(&file_path, repo->gitdir, GIT_ORIG_HEAD_FILE)) == 0 &&
  (error = git_filebuf_open(&file, file_path.ptr, GIT_FILEBUF_CREATE_LEADING_DIRS, GIT_MERGE_FILE_MODE)) == 0 &&
  (error = git_filebuf_printf(&file, "%.*s\n", GIT_OID_HEXSZ, orig_head_str)) == 0)
  error = git_filebuf_commit(&file);

 if (error < 0)
  git_filebuf_cleanup(&file);

 git_buf_dispose(&file_path);

 return error;
}
