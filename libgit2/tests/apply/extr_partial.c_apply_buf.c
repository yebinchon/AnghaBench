
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_patch ;
typedef int git_diff_options ;
struct TYPE_8__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_9__ {void* payload; int hunk_cb; } ;
typedef TYPE_2__ git_apply_options ;
typedef int git_apply_hunk_cb ;


 TYPE_2__ GIT_APPLY_OPTIONS_INIT ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_i (int,unsigned int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int cl_git_pass (int ) ;
 int git__free (char*) ;
 int git_apply__patch (TYPE_1__*,char**,unsigned int*,char const*,size_t,int *,TYPE_2__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffers (int **,char const*,size_t,char const*,char const*,size_t,char const*,int const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int apply_buf(
 const char *old,
 const char *oldname,
 const char *new,
 const char *newname,
 const char *expected,
 const git_diff_options *diff_opts,
 git_apply_hunk_cb hunk_cb,
 void *payload)
{
 git_patch *patch;
 git_buf result = GIT_BUF_INIT;
 git_buf patchbuf = GIT_BUF_INIT;
 git_apply_options opts = GIT_APPLY_OPTIONS_INIT;
 char *filename;
 unsigned int mode;
 int error;
 size_t oldsize = strlen(old);
 size_t newsize = strlen(new);

 opts.hunk_cb = hunk_cb;
 opts.payload = payload;

 cl_git_pass(git_patch_from_buffers(&patch, old, oldsize, oldname, new, newsize, newname, diff_opts));
 if ((error = git_apply__patch(&result, &filename, &mode, old, oldsize, patch, &opts)) == 0) {
  cl_assert_equal_s(expected, result.ptr);
  cl_assert_equal_s(newname, filename);
  cl_assert_equal_i(0100644, mode);
 }

 git__free(filename);
 git_buf_dispose(&result);
 git_buf_dispose(&patchbuf);
 git_patch_free(patch);

 return error;
}
