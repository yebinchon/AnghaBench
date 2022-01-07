
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int name; } ;
typedef TYPE_1__ git_reference ;
struct TYPE_12__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,char const*) ;
 int git_path_exists (int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,char const*) ;
 int git_reference_rename (TYPE_1__**,TYPE_1__*,char const*,int ,int *) ;
 int git_repository_path (int ) ;
 char const* loose_tag_ref_name ;
 scalar_t__ reference_is_packed (TYPE_1__*) ;

void test_refs_rename__loose(void)
{

 git_reference *looked_up_ref, *new_ref, *another_looked_up_ref;
 git_buf temp_path = GIT_BUF_INIT;
 const char *new_name = "refs/tags/Nemo/knows/refs.kung-fu";


 cl_git_pass(git_buf_joinpath(&temp_path, git_repository_path(g_repo), new_name));
 cl_assert(!git_path_exists(temp_path.ptr));


 cl_git_pass(git_reference_lookup(&looked_up_ref, g_repo, loose_tag_ref_name));


 cl_assert(reference_is_packed(looked_up_ref) == 0);


 cl_git_pass(git_reference_rename(&new_ref, looked_up_ref, new_name, 0, ((void*)0)));
 cl_assert_equal_s(new_ref->name, new_name);
 git_reference_free(looked_up_ref);


 cl_git_fail(git_reference_lookup(&another_looked_up_ref, g_repo, loose_tag_ref_name));


 cl_git_pass(git_reference_lookup(&another_looked_up_ref, g_repo, new_name));
 cl_assert_equal_s(new_ref->name, new_name);


 cl_assert(reference_is_packed(another_looked_up_ref) == 0);
 cl_assert(reference_is_packed(new_ref) == 0);


 cl_git_pass(git_buf_joinpath(&temp_path, git_repository_path(g_repo), new_name));
 cl_assert(git_path_exists(temp_path.ptr));

 git_reference_free(new_ref);
 git_reference_free(another_looked_up_ref);
 git_buf_dispose(&temp_path);
}
