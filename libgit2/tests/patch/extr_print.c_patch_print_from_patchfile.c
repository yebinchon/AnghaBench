
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,char const*,size_t,int *) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;

void patch_print_from_patchfile(const char *data, size_t len)
{
 git_patch *patch;
 git_buf buf = GIT_BUF_INIT;

 cl_git_pass(git_patch_from_buffer(&patch, data, len, ((void*)0)));
 cl_git_pass(git_patch_to_buf(&buf, patch));

 cl_assert_equal_s(data, buf.ptr);

 git_patch_free(patch);
 git_buf_dispose(&buf);
}
