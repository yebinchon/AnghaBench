
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_EMISMATCH ;
 int GIT_OBJECT_COMMIT ;
 int GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char const*) ;
 int git_futils_cp (int ,int ,int) ;
 int git_libgit2_opts (int ,int) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_repository_path (int ) ;

void test_object_lookup__lookup_object_with_wrong_hash_returns_error(void)
{
 const char *oldloose = "objects/8e/73b769e97678d684b809b163bebdae2911720f",
       *newloose = "objects/8e/73b769e97678d684b809b163bebdae2911720e",
       *commit = "8e73b769e97678d684b809b163bebdae2911720e";
 git_buf oldpath = GIT_BUF_INIT, newpath = GIT_BUF_INIT;
 git_object *object;
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, commit));


 cl_git_pass(git_buf_joinpath(&oldpath, git_repository_path(g_repo), oldloose));
 cl_git_pass(git_buf_joinpath(&newpath, git_repository_path(g_repo), newloose));
 cl_git_pass(git_futils_cp(oldpath.ptr, newpath.ptr, 0644));


 cl_git_fail_with(GIT_EMISMATCH, git_object_lookup(&object, g_repo, &oid, GIT_OBJECT_COMMIT));


 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 0));
 cl_git_pass(git_object_lookup(&object, g_repo, &oid, GIT_OBJECT_COMMIT));
 cl_git_pass(git_libgit2_opts(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 1));

 git_object_free(object);
 git_buf_dispose(&oldpath);
 git_buf_dispose(&newpath);
}
