
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {char** expect; int cancel_after; int expect_idx; } ;
typedef TYPE_2__ check_walkup_info ;


 TYPE_1__ GIT_BUF_INIT ;
 int check_one_walkup_step ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,char*) ;
 int git_path_walk_up (TYPE_1__*,char*,int ,TYPE_2__*) ;

void test_core_path__11_walkup(void)
{
 git_buf p = GIT_BUF_INIT;

 char *expect[] = {
           "/a/b/c/d/e/", "/a/b/c/d/", "/a/b/c/", "/a/b/", "/a/", "/", ((void*)0),
           "/a/b/c/d/e", "/a/b/c/d/", "/a/b/c/", "/a/b/", "/a/", "/", ((void*)0),
           "/a/b/c/d/e", "/a/b/c/d/", "/a/b/c/", "/a/b/", "/a/", "/", ((void*)0),
           "/a/b/c/d/e", "/a/b/c/d/", "/a/b/c/", "/a/b/", "/a/", "/", ((void*)0),
           "/a/b/c/d/e", "/a/b/c/d/", "/a/b/c/", "/a/b/", ((void*)0),
           "/a/b/c/d/e", "/a/b/c/d/", "/a/b/c/", "/a/b/", ((void*)0),
           "this_is_a_path", "", ((void*)0),
           "this_is_a_path/", "", ((void*)0),
           "///a///b///c///d///e///", "///a///b///c///d///", "///a///b///c///", "///a///b///", "///a///", "///", ((void*)0),
           "a/b/c/", "a/b/", "a/", "", ((void*)0),
           "a/b/c", "a/b/", "a/", "", ((void*)0),
           "a/b/c/", "a/b/", "a/", ((void*)0),
           "", ((void*)0),
           "/", ((void*)0),
           ((void*)0)
 };

 char *root[] = {
           ((void*)0),
           ((void*)0),
           "/",
           "",
           "/a/b",
           "/a/b/",
           ((void*)0),
           ((void*)0),
           ((void*)0),
           ((void*)0),
           ((void*)0),
           "a/",
           ((void*)0),
           ((void*)0),
 };

 int i, j;
 check_walkup_info info;

 info.expect = expect;
 info.cancel_after = -1;

 for (i = 0, j = 0; expect[i] != ((void*)0); i++, j++) {

  git_buf_sets(&p, expect[i]);

  info.expect_idx = i;
  cl_git_pass(
   git_path_walk_up(&p, root[j], check_one_walkup_step, &info)
  );

  cl_assert_equal_s(p.ptr, expect[i]);
  cl_assert(expect[info.expect_idx] == ((void*)0));
  i = info.expect_idx;
 }

 git_buf_dispose(&p);
}
