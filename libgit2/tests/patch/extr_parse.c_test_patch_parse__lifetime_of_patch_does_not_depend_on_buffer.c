
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_6__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int PATCH_ORIGINAL_TO_CHANGE_MIDDLE ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,int ,int ,int *) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;

void test_patch_parse__lifetime_of_patch_does_not_depend_on_buffer(void)
{
 git_buf diff = GIT_BUF_INIT, rendered = GIT_BUF_INIT;
 git_patch *patch;

 cl_git_pass(git_buf_sets(&diff, PATCH_ORIGINAL_TO_CHANGE_MIDDLE));
 cl_git_pass(git_patch_from_buffer(&patch, diff.ptr, diff.size, ((void*)0)));
 git_buf_dispose(&diff);

 cl_git_pass(git_patch_to_buf(&rendered, patch));
 cl_assert_equal_s(PATCH_ORIGINAL_TO_CHANGE_MIDDLE, rendered.ptr);
 git_buf_dispose(&rendered);

 cl_git_pass(git_patch_to_buf(&rendered, patch));
 cl_assert_equal_s(PATCH_ORIGINAL_TO_CHANGE_MIDDLE, rendered.ptr);
 git_buf_dispose(&rendered);

 git_patch_free(patch);
}
