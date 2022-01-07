
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* payload; int data_cb; int hunk_cb; int binary_cb; int file_cb; } ;
typedef TYPE_1__ git_patch_generated_output ;
typedef int git_diff_options ;
typedef int git_diff_line_cb ;
typedef int git_diff_hunk_cb ;
typedef int git_diff_file_cb ;
typedef int git_diff_binary_cb ;


 int GIT_UNUSED (int const*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void diff_output_init(
 git_patch_generated_output *out,
 const git_diff_options *opts,
 git_diff_file_cb file_cb,
 git_diff_binary_cb binary_cb,
 git_diff_hunk_cb hunk_cb,
 git_diff_line_cb data_cb,
 void *payload)
{
 GIT_UNUSED(opts);

 memset(out, 0, sizeof(*out));

 out->file_cb = file_cb;
 out->binary_cb = binary_cb;
 out->hunk_cb = hunk_cb;
 out->data_cb = data_cb;
 out->payload = payload;
}
