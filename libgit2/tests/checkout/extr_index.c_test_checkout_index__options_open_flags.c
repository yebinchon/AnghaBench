
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int checkout_strategy; int file_open_flags; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_DONT_REMOVE_EXISTING ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int check_file_contents (char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_checkout_index (int ,int *,TYPE_1__*) ;

void test_checkout_index__options_open_flags(void)
{
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;

 cl_git_mkfile("./testrepo/new.txt", "hi\n");

 opts.checkout_strategy =
  GIT_CHECKOUT_FORCE | GIT_CHECKOUT_DONT_REMOVE_EXISTING;
 opts.file_open_flags = O_CREAT | O_RDWR | O_APPEND;

 cl_git_pass(git_checkout_index(g_repo, ((void*)0), &opts));

 check_file_contents("./testrepo/new.txt", "hi\nmy new file\n");
}
