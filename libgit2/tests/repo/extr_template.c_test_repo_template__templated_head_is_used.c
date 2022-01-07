
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ git_repository_init_options ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_2__*,char*) ;
 int setup_repo (char*,TYPE_1__*) ;
 int setup_templates (char*,int) ;

void test_repo_template__templated_head_is_used(void)
{
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
 git_buf head = GIT_BUF_INIT;

 opts.flags = GIT_REPOSITORY_INIT_MKPATH | GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE;

 setup_templates("template", 1);
 cl_git_mkfile("template/HEAD", "foobar\n");
 setup_repo("repo", &opts);

 cl_git_pass(git_futils_readbuffer(&head, "repo/.git/HEAD"));
 cl_assert_equal_s("foobar\n", head.ptr);

 git_buf_dispose(&head);
}
