
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_remote ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_set_cleanup (int *,char*) ;
 int cleanup_repository ;
 int find_master_haacked ;
 int find_master_haacked_called ;
 int found_haacked ;
 int found_master ;
 int g_repo ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char*) ;
 int git_path_exists (int ) ;
 int git_remote_create (int **,int ,char*,int ) ;
 int git_remote_fetch (int *,TYPE_1__*,int *,int *) ;
 int git_remote_free (int *) ;
 int git_repository_fetchhead_foreach (int ,int ,int *) ;
 int git_repository_init (int *,char*,int ) ;
 int git_repository_path (int ) ;

void test_fetchhead_nonetwork__create_when_refpecs_given(void)
{
 git_remote *remote;
 git_buf path = GIT_BUF_INIT;
 char *refspec1 = "refs/heads/master";
 char *refspec2 = "refs/heads/haacked";
 char *refspecs[] = { refspec1, refspec2 };
 git_strarray specs = {
  refspecs,
  2,
 };

 cl_set_cleanup(&cleanup_repository, "./test1");
 cl_git_pass(git_repository_init(&g_repo, "./test1", 0));

 cl_git_pass(git_buf_joinpath(&path, git_repository_path(g_repo), "FETCH_HEAD"));
 cl_git_pass(git_remote_create(&remote, g_repo, "origin", cl_fixture("testrepo.git")));

 cl_assert(!git_path_exists(path.ptr));
 cl_git_pass(git_remote_fetch(remote, &specs, ((void*)0), ((void*)0)));
 cl_assert(git_path_exists(path.ptr));

 cl_git_pass(git_repository_fetchhead_foreach(g_repo, find_master_haacked, ((void*)0)));
 cl_assert(find_master_haacked_called);
 cl_assert(found_master);
 cl_assert(found_haacked);

 git_remote_free(remote);
 git_buf_dispose(&path);
}
