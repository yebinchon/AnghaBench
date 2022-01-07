
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct prefix_count {char* member_0; int member_2; int count; int expected; scalar_t__ prefix; int member_1; } ;
typedef int git_remote ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int count_refs ;
 int count_refs_called ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_path_exists (int ) ;
 int git_remote_add_fetch (int ,char*,char*) ;
 int git_remote_create (int **,int ,char*,int ) ;
 int git_remote_fetch (int *,int *,int *,int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_repository_fetchhead_foreach (int ,int ,struct prefix_count**) ;
 int git_repository_init (int *,char*,int ) ;
 int git_repository_path (int ) ;

void test_fetchhead_nonetwork__create_with_multiple_refspecs(void)
{
 git_remote *remote;
 git_buf path = GIT_BUF_INIT;

 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));

 cl_git_pass(git_remote_create(&remote, g_repo, "origin", cl_fixture("testrepo.git")));
 git_remote_free(remote);
 cl_git_pass(git_remote_add_fetch(g_repo, "origin", "+refs/notes/*:refs/origin/notes/*"));

 cl_git_pass(git_remote_lookup(&remote, g_repo, "origin"));

 cl_git_pass(git_buf_joinpath(&path, git_repository_path(g_repo), "FETCH_HEAD"));
 cl_assert(!git_path_exists(path.ptr));
 cl_git_pass(git_remote_fetch(remote, ((void*)0), ((void*)0), ((void*)0)));
 cl_assert(git_path_exists(path.ptr));

 {
  int i;
  struct prefix_count prefix_counts[] = {
   {"refs/notes/", 0, 1},
   {"refs/heads/", 0, 12},
   {"refs/tags/", 0, 7},
   {((void*)0), 0, 0},
  };

  cl_git_pass(git_repository_fetchhead_foreach(g_repo, count_refs, &prefix_counts));
  cl_assert(count_refs_called);
  for (i = 0; prefix_counts[i].prefix; i++)
   cl_assert_equal_i(prefix_counts[i].expected, prefix_counts[i].count);
 }

 git_remote_free(remote);
 git_buf_dispose(&path);
}
