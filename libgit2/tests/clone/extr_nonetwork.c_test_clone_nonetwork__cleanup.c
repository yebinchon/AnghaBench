
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_fixture_cleanup (char*) ;
 int * g_ref ;
 int * g_remote ;
 int * g_repo ;
 int git_reference_free (int *) ;
 int git_remote_free (int *) ;
 int git_repository_free (int *) ;

void test_clone_nonetwork__cleanup(void)
{
 if (g_repo) {
  git_repository_free(g_repo);
  g_repo = ((void*)0);
 }

 if (g_ref) {
  git_reference_free(g_ref);
  g_ref = ((void*)0);
 }

 if (g_remote) {
  git_remote_free(g_remote);
  g_remote = ((void*)0);
 }

 cl_fixture_cleanup("./foo");
}
