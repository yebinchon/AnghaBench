
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_diff ;
struct TYPE_6__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_DIFF_FORMAT_PATCH ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int git_diff_to_buf (TYPE_1__*,int *,int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffers (int **,char const*,int ,char*,char const*,int ,char*,int *) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;
 int strlen (char const*) ;

void test_diff_parse__patch_roundtrip_succeeds(void)
{
 const char buf1[] = "a\n", buf2[] = "b\n";
 git_buf patchbuf = GIT_BUF_INIT, diffbuf = GIT_BUF_INIT;
 git_patch *patch;
 git_diff *diff;

 cl_git_pass(git_patch_from_buffers(&patch, buf1, strlen(buf1), "obj1", buf2, strlen(buf2), "obj2", ((void*)0)));
 cl_git_pass(git_patch_to_buf(&patchbuf, patch));

 cl_git_pass(git_diff_from_buffer(&diff, patchbuf.ptr, patchbuf.size));
 cl_git_pass(git_diff_to_buf(&diffbuf, diff, GIT_DIFF_FORMAT_PATCH));

 cl_assert_equal_s(patchbuf.ptr, diffbuf.ptr);

 git_patch_free(patch);
 git_diff_free(diff);
 git_buf_dispose(&patchbuf);
 git_buf_dispose(&diffbuf);
}
