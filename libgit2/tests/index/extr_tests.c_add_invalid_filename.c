
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_index ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (int ,int *) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,char*,char const*) ;
 int git_index_add_bypath (int *,char const*) ;
 scalar_t__ git_index_entrycount (int *) ;
 int git_index_free (int *) ;
 int git_repository_index (int **,int *) ;
 int p_unlink (int ) ;

__attribute__((used)) static void add_invalid_filename(git_repository *repo, const char *fn)
{
 git_index *index;
 git_buf path = GIT_BUF_INIT;

 cl_git_pass(git_repository_index(&index, repo));
 cl_assert(git_index_entrycount(index) == 0);

 git_buf_joinpath(&path, "./invalid", fn);

 cl_git_mkfile(path.ptr, ((void*)0));
 cl_git_fail(git_index_add_bypath(index, fn));
 cl_must_pass(p_unlink(path.ptr));

 cl_assert(git_index_entrycount(index) == 0);

 git_buf_dispose(&path);
 git_index_free(index);
}
