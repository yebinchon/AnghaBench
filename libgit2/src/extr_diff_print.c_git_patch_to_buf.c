
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch ;
typedef int git_buf ;


 int assert (int) ;
 int git_buf_sanitize (int *) ;
 int git_diff_print_callback__to_buf ;
 int git_patch_print (int *,int ,int *) ;

int git_patch_to_buf(git_buf *out, git_patch *patch)
{
 assert(out && patch);
 git_buf_sanitize(out);
 return git_patch_print(patch, git_diff_print_callback__to_buf, out);
}
