
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_joinpath (TYPE_1__*,int ,int ) ;
 int git_path_exists (int ) ;
 int git_reference_delete (int *) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,int ) ;
 int git_repository_path (int ) ;
 int packed_test_head_name ;
 scalar_t__ reference_is_packed (int *) ;

void test_refs_delete__packed_loose(void)
{

 git_reference *looked_up_ref, *another_looked_up_ref;
 git_buf temp_path = GIT_BUF_INIT;


 cl_git_pass(git_buf_joinpath(&temp_path, git_repository_path(g_repo), packed_test_head_name));
 cl_assert(git_path_exists(temp_path.ptr));


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, packed_test_head_name));


 cl_assert(reference_is_packed(looked_up_ref) == 0);


 cl_git_pass(git_reference_delete(looked_up_ref));
 git_reference_free(looked_up_ref);


 cl_git_fail(git_reference_lookup(&another_looked_up_ref, g_repo, packed_test_head_name));


 cl_assert(!git_path_exists(temp_path.ptr));

 git_reference_free(another_looked_up_ref);
 git_buf_dispose(&temp_path);
}
