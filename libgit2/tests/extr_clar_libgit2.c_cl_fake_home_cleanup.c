
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_CONFIG_LEVEL_GLOBAL ;
 int GIT_OPT_SET_SEARCH_PATH ;
 int GIT_UNUSED (void*) ;
 char* _cl_restore_home ;
 int cl_git_pass (int ) ;
 int git__free (char*) ;
 int git_libgit2_opts (int ,int ,char*) ;

void cl_fake_home_cleanup(void *payload)
{
 char *restore = _cl_restore_home;
 _cl_restore_home = ((void*)0);

 GIT_UNUSED(payload);

 if (restore) {
  cl_git_pass(git_libgit2_opts(
   GIT_OPT_SET_SEARCH_PATH, GIT_CONFIG_LEVEL_GLOBAL, restore));
  git__free(restore);
 }
}
