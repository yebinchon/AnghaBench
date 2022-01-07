
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int checkout_strategy; int file_mode; } ;
typedef TYPE_1__ git_checkout_options ;


 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_CHECKOUT_RECREATE_MISSING ;
 int GIT_CHECKOUT_SAFE ;
 int GIT_MODE_PERMS_MASK ;
 int cl_assert_equal_i_fmt (int,int,char*) ;
 int cl_git_pass (int ) ;
 int cl_is_chmod_supported () ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;
 int p_stat (char*,struct stat*) ;

void test_checkout_index__options_override_file_modes(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 struct stat st;

 if (!cl_is_chmod_supported())
  return;

 opts.checkout_strategy = GIT_CHECKOUT_SAFE | GIT_CHECKOUT_RECREATE_MISSING;
 opts.file_mode = 0700;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 cl_git_pass(p_stat("./testrepo/new.txt", &st));
 cl_assert_equal_i_fmt(st.st_mode & GIT_MODE_PERMS_MASK, 0700, "%07o");
}
