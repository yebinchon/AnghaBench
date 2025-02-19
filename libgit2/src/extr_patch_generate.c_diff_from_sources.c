
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xo ;
typedef int pd ;
struct TYPE_8__ {int base; } ;
struct TYPE_9__ {TYPE_1__ patch; int output; } ;
typedef TYPE_2__ patch_generated_with_delta ;
typedef TYPE_2__ git_xdiff_output ;
typedef int git_diff_options ;
typedef int git_diff_line_cb ;
typedef int git_diff_hunk_cb ;
typedef int git_diff_file_content_src ;
typedef int git_diff_file_cb ;
typedef int git_diff_binary_cb ;


 int diff_output_init (int *,int const*,int ,int ,int ,int ,void*) ;
 int git_patch_free (int *) ;
 int git_xdiff_init (TYPE_2__*,int const*) ;
 int memset (TYPE_2__*,int ,int) ;
 int patch_generated_from_sources (TYPE_2__*,TYPE_2__*,int *,int *,int const*) ;

__attribute__((used)) static int diff_from_sources(
 git_diff_file_content_src *oldsrc,
 git_diff_file_content_src *newsrc,
 const git_diff_options *opts,
 git_diff_file_cb file_cb,
 git_diff_binary_cb binary_cb,
 git_diff_hunk_cb hunk_cb,
 git_diff_line_cb data_cb,
 void *payload)
{
 int error = 0;
 patch_generated_with_delta pd;
 git_xdiff_output xo;

 memset(&xo, 0, sizeof(xo));
 diff_output_init(
  &xo.output, opts, file_cb, binary_cb, hunk_cb, data_cb, payload);
 git_xdiff_init(&xo, opts);

 memset(&pd, 0, sizeof(pd));

 error = patch_generated_from_sources(&pd, &xo, oldsrc, newsrc, opts);

 git_patch_free(&pd.patch.base);

 return error;
}
