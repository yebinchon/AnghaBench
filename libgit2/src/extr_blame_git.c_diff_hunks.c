
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int member_0; } ;
typedef TYPE_1__ xpparam_t ;
struct TYPE_15__ {int hunk_func; int member_0; } ;
typedef TYPE_2__ xdemitconf_t ;
struct TYPE_16__ {void* priv; int member_0; } ;
typedef TYPE_3__ xdemitcb_t ;
struct TYPE_17__ {scalar_t__ size; } ;
typedef TYPE_4__ mmfile_t ;


 int GIT_ERROR_INVALID ;
 scalar_t__ GIT_XDIFF_MAX_SIZE ;
 int git_error_set (int ,char*) ;
 int my_emit ;
 int trim_common_tail (TYPE_4__*,TYPE_4__*,int ) ;
 int xdl_diff (TYPE_4__*,TYPE_4__*,TYPE_1__*,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int diff_hunks(mmfile_t file_a, mmfile_t file_b, void *cb_data)
{
 xpparam_t xpp = {0};
 xdemitconf_t xecfg = {0};
 xdemitcb_t ecb = {0};

 xecfg.hunk_func = my_emit;
 ecb.priv = cb_data;

 trim_common_tail(&file_a, &file_b, 0);

 if (file_a.size > GIT_XDIFF_MAX_SIZE ||
  file_b.size > GIT_XDIFF_MAX_SIZE) {
  git_error_set(GIT_ERROR_INVALID, "file too large to blame");
  return -1;
 }

 return xdl_diff(&file_a, &file_b, &xpp, &xecfg, &ecb);
}
