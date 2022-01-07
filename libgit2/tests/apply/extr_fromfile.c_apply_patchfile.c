
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_5__ {unsigned int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (unsigned int,unsigned int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git__free (char*) ;
 int git_apply__patch (TYPE_1__*,char**,unsigned int*,char const*,size_t,int *,int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,char const*,int ,int *) ;
 scalar_t__ memcmp (char const*,int ,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int apply_patchfile(
 const char *old,
 size_t old_len,
 const char *new,
 size_t new_len,
 const char *patchfile,
 const char *filename_expected,
 unsigned int mode_expected)
{
 git_patch *patch;
 git_buf result = GIT_BUF_INIT;
 git_buf patchbuf = GIT_BUF_INIT;
 char *filename;
 unsigned int mode;
 int error;

 cl_git_pass(git_patch_from_buffer(&patch, patchfile, strlen(patchfile), ((void*)0)));

 error = git_apply__patch(&result, &filename, &mode, old, old_len, patch, ((void*)0));

 if (error == 0) {
  cl_assert_equal_i(new_len, result.size);
  if (new_len)
   cl_assert(memcmp(new, result.ptr, new_len) == 0);

  cl_assert_equal_s(filename_expected, filename);
  cl_assert_equal_i(mode_expected, mode);
 }

 git__free(filename);
 git_buf_dispose(&result);
 git_buf_dispose(&patchbuf);
 git_patch_free(patch);

 return error;
}
