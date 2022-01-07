
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_remote_head ;
typedef int git_remote ;


 size_t ARRAY_SIZE (char const**) ;
 int GIT_DIRECTION_FETCH ;
 int URL ;
 int cl_assert_ (char,int ) ;
 int cl_assert_equal_sz (size_t,int) ;
 int cl_git_pass (int ) ;
 int git_remote_connect (int *,int ,int *,int *,int *) ;
 int git_remote_create_detached (int **,int ) ;
 int git_remote_free (int *) ;
 int git_remote_ls (TYPE_1__ const***,size_t*,int *) ;
 int strcmp (int ,char const*) ;

void test_online_remotes__detached_remote_succeeds_ls(void)
{
 const char *refs[] = {
     "HEAD",
     "refs/heads/first-merge",
     "refs/heads/master",
     "refs/heads/no-parent",
     "refs/tags/annotated_tag",
     "refs/tags/annotated_tag^{}",
     "refs/tags/blob",
     "refs/tags/commit_tree",
     "refs/tags/nearly-dangling",
 };
 const git_remote_head **heads;
 git_remote *remote;
 size_t i, j, n;

 cl_git_pass(git_remote_create_detached(&remote, URL));
 cl_git_pass(git_remote_connect(remote, GIT_DIRECTION_FETCH, ((void*)0), ((void*)0), ((void*)0)));
 cl_git_pass(git_remote_ls(&heads, &n, remote));

 cl_assert_equal_sz(n, 9);
 for (i = 0; i < n; i++) {
  char found = 0;

  for (j = 0; j < ARRAY_SIZE(refs); j++) {
   if (!strcmp(heads[i]->name, refs[j])) {
    found = 1;
    break;
   }
  }

  cl_assert_(found, heads[i]->name);
 }

 git_remote_free(remote);
}
