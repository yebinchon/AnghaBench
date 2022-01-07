
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_buf ;
struct TYPE_3__ {char** expect; int cancel_after; int expect_idx; } ;
typedef TYPE_1__ check_walkup_info ;


 int CANCEL_VALUE ;
 int GIT_BUF_INIT ;
 int check_one_walkup_step ;
 int cl_assert_equal_i (int ,int ) ;
 int git_buf_dispose (int *) ;
 int git_buf_sets (int *,char*) ;
 int git_path_walk_up (int *,char*,int ,TYPE_1__*) ;

void test_core_path__11a_walkup_cancel(void)
{
 git_buf p = GIT_BUF_INIT;
 int cancel[] = { 3, 2, 1, 0 };
 char *expect[] = {
  "/a/b/c/d/e/", "/a/b/c/d/", "/a/b/c/", "[CANCEL]", ((void*)0),
  "/a/b/c/d/e", "/a/b/c/d/", "[CANCEL]", ((void*)0),
  "/a/b/c/d/e", "[CANCEL]", ((void*)0),
  "[CANCEL]", ((void*)0),
  ((void*)0)
 };
 char *root[] = { ((void*)0), ((void*)0), "/", "", ((void*)0) };
 int i, j;
 check_walkup_info info;

 info.expect = expect;

 for (i = 0, j = 0; expect[i] != ((void*)0); i++, j++) {

  git_buf_sets(&p, expect[i]);

  info.cancel_after = cancel[j];
  info.expect_idx = i;

  cl_assert_equal_i(
   CANCEL_VALUE,
   git_path_walk_up(&p, root[j], check_one_walkup_step, &info)
  );


  while (expect[i] != ((void*)0)) i++;
 }

 git_buf_dispose(&p);
}
