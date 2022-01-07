
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_submodule_update_options ;
typedef int git_submodule ;
typedef int git_repository ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_SUBMODULE_UPDATE_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int cl_repo_set_string (int *,char*,int ) ;
 int clar_sandbox_path () ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,char*) ;
 int git_submodule_free (int *) ;
 int git_submodule_lookup (int **,int *,char*) ;
 int git_submodule_update (int *,int,int *) ;
 int * setup_fixture_super () ;

void test_repo_reservedname__submodule_pointer_during_create(void)
{
 git_repository *repo;
 git_submodule *sm;
 git_submodule_update_options update_options = GIT_SUBMODULE_UPDATE_OPTIONS_INIT;
 git_buf url = GIT_BUF_INIT;

 repo = setup_fixture_super();

 cl_git_pass(git_buf_joinpath(&url, clar_sandbox_path(), "sub.git"));
 cl_repo_set_string(repo, "submodule.sub.url", url.ptr);

 cl_git_pass(git_submodule_lookup(&sm, repo, "sub"));
 cl_git_pass(git_submodule_update(sm, 1, &update_options));

 git_submodule_free(sm);
 git_buf_dispose(&url);
}
