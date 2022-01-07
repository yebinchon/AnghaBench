
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_8__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_buf_sets (TYPE_1__*,int ) ;
 int git_path_prettify_dir (TYPE_1__*,int ,int *) ;
 int git_repository_commondir (int *) ;
 int git_repository_path (int *) ;
 int git_repository_workdir (int *) ;

__attribute__((used)) static void assert_sm_valid(git_repository *parent, git_repository *child, const char *sm_name)
{
 git_buf expected = GIT_BUF_INIT, actual = GIT_BUF_INIT;


 cl_git_pass(git_buf_joinpath(&expected, git_repository_workdir(parent), sm_name));
 cl_git_pass(git_path_prettify_dir(&expected, expected.ptr, ((void*)0)));
 cl_git_pass(git_buf_sets(&actual, git_repository_workdir(child)));
 cl_git_pass(git_path_prettify_dir(&actual, actual.ptr, ((void*)0)));
 cl_assert_equal_s(expected.ptr, actual.ptr);

 git_buf_clear(&expected);
 git_buf_clear(&actual);


 cl_git_pass(git_buf_joinpath(&expected, git_repository_commondir(parent), "modules"));
 cl_git_pass(git_buf_joinpath(&expected, expected.ptr, sm_name));
 cl_git_pass(git_path_prettify_dir(&expected, expected.ptr, ((void*)0)));
 cl_git_pass(git_buf_sets(&actual, git_repository_commondir(child)));
 cl_git_pass(git_path_prettify_dir(&actual, actual.ptr, ((void*)0)));
 cl_assert_equal_s(expected.ptr, actual.ptr);


 cl_git_pass(git_buf_sets(&actual, git_repository_path(child)));
 cl_git_pass(git_path_prettify_dir(&actual, actual.ptr, ((void*)0)));
 cl_assert_equal_s(expected.ptr, actual.ptr);

 git_buf_dispose(&expected);
 git_buf_dispose(&actual);
}
