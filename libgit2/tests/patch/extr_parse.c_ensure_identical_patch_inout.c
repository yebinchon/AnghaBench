
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int cl_assert_equal_strn (int ,char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,char const*,int ,int *) ;
 int git_patch_to_buf (int *,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void ensure_identical_patch_inout(const char *content) {
 git_buf buf = GIT_BUF_INIT;
 git_patch *patch;

 cl_git_pass(git_patch_from_buffer(&patch, content, strlen(content), ((void*)0)));
 cl_git_pass(git_patch_to_buf(&buf, patch));
 cl_assert_equal_strn(git_buf_cstr(&buf), content, strlen(content));

 git_patch_free(patch);
 git_buf_dispose(&buf);
}
