
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_6__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_ (int,int *) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int cl_must_pass (int ) ;
 int cl_skip () ;
 int errno ;
 scalar_t__ git__suffixcmp (int *,char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 int git_futils_creat_withpath (int ,int,int) ;
 int git_futils_mkpath2file (int ,int) ;
 int git_futils_readbuffer (TYPE_1__*,int ) ;
 scalar_t__ git_path_exists (int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,char*) ;
 int * git_repository_path (int *) ;
 int * git_repository_workdir (int *) ;
 int p_close (int) ;
 int p_mkdir (char*,int) ;
 int p_write (int,int ,int ) ;
 scalar_t__ strchr (char const*,char) ;
 int * strerror (int ) ;
 scalar_t__ symlink (int ,int ) ;

void test_repo_open__from_git_new_workdir(void)
{







 git_repository *repo2;
 git_buf link_tgt = GIT_BUF_INIT, link = GIT_BUF_INIT, body = GIT_BUF_INIT;
 const char **scan;
 int link_fd;
 static const char *links[] = {
  "config", "refs", "logs/refs", "objects", "info", "hooks",
  "packed-refs", "remotes", "rr-cache", "svn", ((void*)0)
 };
 static const char *copies[] = {
  "HEAD", ((void*)0)
 };

 cl_git_sandbox_init("empty_standard_repo");

 cl_git_pass(p_mkdir("alternate", 0777));
 cl_git_pass(p_mkdir("alternate/.git", 0777));

 for (scan = links; *scan != ((void*)0); scan++) {
  git_buf_joinpath(&link_tgt, "empty_standard_repo/.git", *scan);
  if (git_path_exists(link_tgt.ptr)) {
   git_buf_joinpath(&link_tgt, "../../empty_standard_repo/.git", *scan);
   git_buf_joinpath(&link, "alternate/.git", *scan);
   if (strchr(*scan, '/'))
    git_futils_mkpath2file(link.ptr, 0777);
   cl_assert_(symlink(link_tgt.ptr, link.ptr) == 0, strerror(errno));
  }
 }
 for (scan = copies; *scan != ((void*)0); scan++) {
  git_buf_joinpath(&link_tgt, "empty_standard_repo/.git", *scan);
  if (git_path_exists(link_tgt.ptr)) {
   git_buf_joinpath(&link, "alternate/.git", *scan);
   cl_git_pass(git_futils_readbuffer(&body, link_tgt.ptr));

   cl_assert((link_fd = git_futils_creat_withpath(link.ptr, 0777, 0666)) >= 0);
   cl_must_pass(p_write(link_fd, body.ptr, body.size));
   p_close(link_fd);
  }
 }

 git_buf_dispose(&link_tgt);
 git_buf_dispose(&link);
 git_buf_dispose(&body);


 cl_git_pass(git_repository_open(&repo2, "alternate"));

 cl_assert(git_repository_path(repo2) != ((void*)0));
 cl_assert_(git__suffixcmp(git_repository_path(repo2), "alternate/.git/") == 0, git_repository_path(repo2));

 cl_assert(git_repository_workdir(repo2) != ((void*)0));
 cl_assert_(git__suffixcmp(git_repository_workdir(repo2), "alternate/") == 0, git_repository_workdir(repo2));

 git_repository_free(repo2);



}
