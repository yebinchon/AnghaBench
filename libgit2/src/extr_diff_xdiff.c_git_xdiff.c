
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int info ;
struct TYPE_9__ {int error; } ;
struct TYPE_15__ {TYPE_3__* priv; } ;
struct TYPE_14__ {int flags; int * find_func; int * find_func_priv; } ;
struct TYPE_10__ {TYPE_1__ output; TYPE_7__ callback; TYPE_6__ config; int params; } ;
typedef TYPE_2__ git_xdiff_output ;
struct TYPE_13__ {scalar_t__ size; int ptr; } ;
struct TYPE_12__ {scalar_t__ size; int ptr; } ;
struct TYPE_11__ {TYPE_5__ xd_new_data; TYPE_4__ xd_old_data; TYPE_2__* xo; int * patch; } ;
typedef TYPE_3__ git_xdiff_info ;
typedef int git_patch_generated_output ;
typedef int git_patch_generated ;
typedef int git_diff_find_context_payload ;


 int GIT_ERROR_INVALID ;
 scalar_t__ GIT_XDIFF_MAX_SIZE ;
 int XDL_EMIT_FUNCNAMES ;
 int git_diff_find_context_clear (int *) ;
 int git_diff_find_context_init (int **,int *,int ) ;
 int git_error_set (int ,char*) ;
 int git_patch_generated_driver (int *) ;
 int git_patch_generated_new_data (int *,scalar_t__*,int *) ;
 int git_patch_generated_old_data (int *,scalar_t__*,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int xdl_diff (TYPE_4__*,TYPE_5__*,int *,TYPE_6__*,TYPE_7__*) ;

__attribute__((used)) static int git_xdiff(git_patch_generated_output *output, git_patch_generated *patch)
{
 git_xdiff_output *xo = (git_xdiff_output *)output;
 git_xdiff_info info;
 git_diff_find_context_payload findctxt;

 memset(&info, 0, sizeof(info));
 info.patch = patch;
 info.xo = xo;

 xo->callback.priv = &info;

 git_diff_find_context_init(
  &xo->config.find_func, &findctxt, git_patch_generated_driver(patch));
 xo->config.find_func_priv = &findctxt;

 if (xo->config.find_func != ((void*)0))
  xo->config.flags |= XDL_EMIT_FUNCNAMES;
 else
  xo->config.flags &= ~XDL_EMIT_FUNCNAMES;





 git_patch_generated_old_data(&info.xd_old_data.ptr, &info.xd_old_data.size, patch);
 git_patch_generated_new_data(&info.xd_new_data.ptr, &info.xd_new_data.size, patch);

 if (info.xd_old_data.size > GIT_XDIFF_MAX_SIZE ||
  info.xd_new_data.size > GIT_XDIFF_MAX_SIZE) {
  git_error_set(GIT_ERROR_INVALID, "files too large for diff");
  return -1;
 }

 xdl_diff(&info.xd_old_data, &info.xd_new_data,
  &xo->params, &xo->config, &xo->callback);

 git_diff_find_context_clear(&findctxt);

 return xo->output.error;
}
