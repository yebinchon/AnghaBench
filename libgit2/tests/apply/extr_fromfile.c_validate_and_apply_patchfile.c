
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_diff_options ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int apply_patchfile (char const*,size_t,char const*,size_t,char const*,char const*,unsigned int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffers (int **,char const*,size_t,char*,char const*,size_t,char*,int const*) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;

__attribute__((used)) static int validate_and_apply_patchfile(
 const char *old,
 size_t old_len,
 const char *new,
 size_t new_len,
 const char *patchfile,
 const git_diff_options *diff_opts,
 const char *filename_expected,
 unsigned int mode_expected)
{
 git_patch *patch_fromdiff;
 git_buf validated = GIT_BUF_INIT;
 int error;

 cl_git_pass(git_patch_from_buffers(&patch_fromdiff,
  old, old_len, "file.txt",
  new, new_len, "file.txt",
  diff_opts));
 cl_git_pass(git_patch_to_buf(&validated, patch_fromdiff));

 cl_assert_equal_s(patchfile, validated.ptr);

 error = apply_patchfile(old, old_len, new, new_len, patchfile, filename_expected, mode_expected);

 git_buf_dispose(&validated);
 git_patch_free(patch_fromdiff);

 return error;
}
