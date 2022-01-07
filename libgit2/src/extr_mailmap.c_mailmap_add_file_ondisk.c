
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_mailmap ;
struct TYPE_6__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 int git_path_join_unrooted (TYPE_1__*,char const*,char const*,int *) ;
 char* git_repository_workdir (int *) ;
 int mailmap_add_buffer (int *,int ,int ) ;

__attribute__((used)) static int mailmap_add_file_ondisk(
 git_mailmap *mm, const char *path, git_repository *repo)
{
 const char *base = repo ? git_repository_workdir(repo) : ((void*)0);
 git_buf fullpath = GIT_BUF_INIT;
 git_buf content = GIT_BUF_INIT;
 int error;

 error = git_path_join_unrooted(&fullpath, path, base, ((void*)0));
 if (error < 0)
  goto cleanup;

 error = git_futils_readbuffer(&content, fullpath.ptr);
 if (error < 0)
  goto cleanup;

 error = mailmap_add_buffer(mm, content.ptr, content.size);
 if (error < 0)
  goto cleanup;

cleanup:
 git_buf_dispose(&fullpath);
 git_buf_dispose(&content);
 return error;
}
