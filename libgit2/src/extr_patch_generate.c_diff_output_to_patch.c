
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_patch_generated_output ;
typedef int git_patch_generated ;


 int diff_output_init (int *,int *,int ,int ,int ,int ,int *) ;
 int git_patch_hunk_cb ;
 int patch_generated_binary_cb ;
 int patch_generated_file_cb ;
 int patch_generated_line_cb ;

__attribute__((used)) static void diff_output_to_patch(
 git_patch_generated_output *out, git_patch_generated *patch)
{
 diff_output_init(
  out,
  ((void*)0),
  patch_generated_file_cb,
  patch_generated_binary_cb,
  git_patch_hunk_cb,
  patch_generated_line_cb,
  patch);
}
