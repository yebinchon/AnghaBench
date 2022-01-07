
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_blame_options ;
struct TYPE_7__ {TYPE_1__* final_signature; int * orig_signature; } ;
typedef TYPE_2__ git_blame_hunk ;
struct TYPE_8__ {int replace_email; int replace_name; } ;
struct TYPE_6__ {int email; int name; } ;


 size_t ARRAY_SIZE (TYPE_3__*) ;
 int GIT_BLAME_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_blame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,int *) ;
 TYPE_2__* git_blame_get_hunk_byline (int ,size_t) ;
 TYPE_3__* resolved ;

void test_mailmap_blame__hunks_no_mailmap(void)
{
 size_t idx = 0;
 const git_blame_hunk *hunk = ((void*)0);
 git_blame_options opts = GIT_BLAME_OPTIONS_INIT;

 g_repo = cl_git_sandbox_init("mailmap");

 cl_git_pass(git_blame_file(&g_blame, g_repo, "file.txt", &opts));
 cl_assert(g_blame);

 for (idx = 0; idx < ARRAY_SIZE(resolved); ++idx) {
  hunk = git_blame_get_hunk_byline(g_blame, idx + 1);

  cl_assert(hunk->final_signature != ((void*)0));
  cl_assert(hunk->orig_signature != ((void*)0));
  cl_assert_equal_s(hunk->final_signature->name, resolved[idx].replace_name);
  cl_assert_equal_s(hunk->final_signature->email, resolved[idx].replace_email);
 }
}
