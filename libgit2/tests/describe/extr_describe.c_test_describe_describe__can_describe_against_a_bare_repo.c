
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int show_commit_oid_as_fallback; } ;
typedef TYPE_1__ git_describe_options ;
typedef int git_describe_format_options ;


 int GIT_DESCRIBE_FORMAT_OPTIONS_INIT ;
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ;
 int assert_describe (char*,char*,int *,TYPE_1__*,int *) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int git_repository_free (int *) ;
 int git_repository_open (int **,int ) ;

void test_describe_describe__can_describe_against_a_bare_repo(void)
{
 git_repository *repo;
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_describe_format_options fmt_opts = GIT_DESCRIBE_FORMAT_OPTIONS_INIT;

 cl_git_pass(git_repository_open(&repo, cl_fixture("testrepo.git")));

 assert_describe("hard_tag", "HEAD", repo, &opts, &fmt_opts);

 opts.show_commit_oid_as_fallback = 1;

 assert_describe("be3563a*", "HEAD^", repo, &opts, &fmt_opts);

 git_repository_free(repo);
}
