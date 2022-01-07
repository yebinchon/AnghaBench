
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_describe_result ;
typedef int git_describe_options ;
typedef int git_describe_format_options ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_describe_format (int *,int *,int *) ;
 int git_describe_result_free (int *) ;
 int git_describe_workdir (int **,int *,int *) ;
 int wildmatch (char const*,int ,int ) ;

void assert_describe_workdir(
 const char *expected_output,
 git_repository *repo,
 git_describe_options *opts,
 git_describe_format_options *fmt_opts)
{
 git_buf label = GIT_BUF_INIT;
 git_describe_result *result;

 cl_git_pass(git_describe_workdir(&result, repo, opts));
 cl_git_pass(git_describe_format(&label, result, fmt_opts));

 cl_must_pass(wildmatch(expected_output, git_buf_cstr(&label), 0));

 git_describe_result_free(result);
 git_buf_dispose(&label);
}
