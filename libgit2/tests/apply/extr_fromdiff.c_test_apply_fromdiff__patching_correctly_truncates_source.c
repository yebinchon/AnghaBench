
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_EAPPLYFAIL ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git__free (char*) ;
 int git_apply__patch (int *,char**,unsigned int*,char*,int,int *,int *) ;
 int git_buf_dispose (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffers (int **,char*,int,char*,char*,int,char*,int *) ;

void test_apply_fromdiff__patching_correctly_truncates_source(void)
{
 git_buf original = GIT_BUF_INIT, patched = GIT_BUF_INIT;
 git_patch *patch;
 unsigned int mode;
 char *path;

 cl_git_pass(git_patch_from_buffers(&patch,
        "foo\nbar", 7, "file.txt",
        "foo\nfoo", 7, "file.txt", ((void*)0)));
 cl_git_fail_with(GIT_EAPPLYFAIL,
    git_apply__patch(&patched, &path, &mode,
       "foo\nbar\n", 5, patch, ((void*)0)));


 cl_git_pass(git_apply__patch(&patched, &path, &mode,
         "foo\nbar\n", 7, patch, ((void*)0)));

 git_buf_dispose(&original);
 git_buf_dispose(&patched);
 git_patch_free(patch);
 git__free(path);
}
