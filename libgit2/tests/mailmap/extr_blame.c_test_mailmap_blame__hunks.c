
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
typedef TYPE_2__ git_blame_options ;
struct TYPE_11__ {TYPE_1__* final_signature; int * orig_signature; } ;
typedef TYPE_3__ git_blame_hunk ;
struct TYPE_12__ {int real_email; int real_name; } ;
struct TYPE_9__ {int email; int name; } ;


 size_t ARRAY_SIZE (TYPE_4__*) ;
 TYPE_2__ GIT_BLAME_OPTIONS_INIT ;
 int GIT_BLAME_USE_MAILMAP ;
 int cl_assert (int ) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_blame ;
 int g_repo ;
 int git_blame_file (int *,int ,char*,TYPE_2__*) ;
 TYPE_3__* git_blame_get_hunk_byline (int ,size_t) ;
 TYPE_4__* resolved ;

void test_mailmap_blame__hunks(void)
{
 size_t idx = 0;
 const git_blame_hunk *hunk = ((void*)0);
 git_blame_options opts = GIT_BLAME_OPTIONS_INIT;

 g_repo = cl_git_sandbox_init("mailmap");

 opts.flags |= GIT_BLAME_USE_MAILMAP;

 cl_git_pass(git_blame_file(&g_blame, g_repo, "file.txt", &opts));
 cl_assert(g_blame);

 for (idx = 0; idx < ARRAY_SIZE(resolved); ++idx) {
  hunk = git_blame_get_hunk_byline(g_blame, idx + 1);

  cl_assert(hunk->final_signature != ((void*)0));
  cl_assert(hunk->orig_signature != ((void*)0));
  cl_assert_equal_s(hunk->final_signature->name, resolved[idx].real_name);
  cl_assert_equal_s(hunk->final_signature->email, resolved[idx].real_email);
 }
}
