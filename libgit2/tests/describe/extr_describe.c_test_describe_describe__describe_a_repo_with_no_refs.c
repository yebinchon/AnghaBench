
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_object ;
typedef int git_describe_result ;
struct TYPE_4__ {int show_commit_oid_as_fallback; } ;
typedef TYPE_1__ git_describe_options ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 TYPE_1__ GIT_DESCRIBE_OPTIONS_INIT ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_cleanup () ;
 int * cl_git_sandbox_init (char*) ;
 int delete_cb ;
 int git_buf_dispose (int *) ;
 int git_describe_commit (int **,int *,TYPE_1__*) ;
 int git_describe_result_free (int *) ;
 int git_object_free (int *) ;
 int git_reference_foreach (int *,int ,int *) ;
 int git_revparse_single (int **,int *,char*) ;

void test_describe_describe__describe_a_repo_with_no_refs(void)
{
 git_repository *repo;
 git_describe_options opts = GIT_DESCRIBE_OPTIONS_INIT;
 git_buf buf = GIT_BUF_INIT;
 git_object *object;
 git_describe_result *result = ((void*)0);

 repo = cl_git_sandbox_init("testrepo.git");
 cl_git_pass(git_revparse_single(&object, repo, "HEAD"));

 cl_git_pass(git_reference_foreach(repo, delete_cb, ((void*)0)));


 cl_git_fail(git_describe_commit(&result, object, &opts));


 opts.show_commit_oid_as_fallback = 1;
 cl_git_pass(git_describe_commit(&result, object, &opts));

 git_describe_result_free(result);
 git_object_free(object);
 git_buf_dispose(&buf);
 cl_git_sandbox_cleanup();
}
