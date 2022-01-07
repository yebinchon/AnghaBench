
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int name; } ;
typedef TYPE_1__ git_reference ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_PACKEDREFS_FILE ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_path_exists (int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup (TYPE_1__**,int ,int ) ;
 int git_repository_path (int ) ;
 int loose_tag_ref_name ;
 int packall () ;
 int reference_is_packed (TYPE_1__*) ;

void test_refs_pack__loose(void)
{

 git_reference *reference;
 git_buf temp_path = GIT_BUF_INIT;


 cl_git_pass(git_reference_lookup(&reference, g_repo, loose_tag_ref_name));
 cl_assert(reference_is_packed(reference) == 0);
 cl_assert_equal_s(reference->name, loose_tag_ref_name);
 git_reference_free(reference);






 packall();


 cl_git_pass(git_buf_joinpath(&temp_path, git_repository_path(g_repo), GIT_PACKEDREFS_FILE));
 cl_assert(git_path_exists(temp_path.ptr));


 cl_git_pass(git_reference_lookup(&reference, g_repo, loose_tag_ref_name));
 cl_assert(reference_is_packed(reference));
 cl_assert_equal_s(reference->name, loose_tag_ref_name);


 cl_git_pass(git_buf_joinpath(&temp_path, git_repository_path(g_repo), loose_tag_ref_name));
 cl_assert(!git_path_exists(temp_path.ptr));

 git_reference_free(reference);
 git_buf_dispose(&temp_path);
}
