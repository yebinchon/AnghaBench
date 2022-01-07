
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_diff_options ;
struct TYPE_8__ {char* ptr; unsigned int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,unsigned int) ;
 int cl_assert_equal_p (int *,char*) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git__free (char*) ;
 int git_apply__patch (TYPE_1__*,char**,unsigned int*,char*,unsigned int,int *,int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffers (int **,char*,unsigned int,char const*,char*,unsigned int,char const*,int const*) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;

__attribute__((used)) static int apply_gitbuf(
 const git_buf *old,
 const char *oldname,
 const git_buf *new,
 const char *newname,
 const char *patch_expected,
 const git_diff_options *diff_opts)
{
 git_patch *patch;
 git_buf result = GIT_BUF_INIT;
 git_buf patchbuf = GIT_BUF_INIT;
 char *filename;
 unsigned int mode;
 int error;

 cl_git_pass(git_patch_from_buffers(&patch,
  old ? old->ptr : ((void*)0), old ? old->size : 0,
  oldname,
  new ? new->ptr : ((void*)0), new ? new->size : 0,
  newname,
  diff_opts));

 if (patch_expected) {
  cl_git_pass(git_patch_to_buf(&patchbuf, patch));
  cl_assert_equal_s(patch_expected, patchbuf.ptr);
 }

 error = git_apply__patch(&result, &filename, &mode, old ? old->ptr : ((void*)0), old ? old->size : 0, patch, ((void*)0));

 if (error == 0 && new == ((void*)0)) {
  cl_assert_equal_i(0, result.size);
  cl_assert_equal_p(((void*)0), filename);
  cl_assert_equal_i(0, mode);
 }
 else if (error == 0) {
  cl_assert_equal_s(new->ptr, result.ptr);
  cl_assert_equal_s(newname ? newname : oldname, filename);
  cl_assert_equal_i(0100644, mode);
 }

 git__free(filename);
 git_buf_dispose(&result);
 git_buf_dispose(&patchbuf);
 git_patch_free(patch);

 return error;
}
