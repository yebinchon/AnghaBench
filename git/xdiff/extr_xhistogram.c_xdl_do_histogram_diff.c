
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xpparam_t ;
struct TYPE_7__ {scalar_t__ dstart; scalar_t__ dend; } ;
struct TYPE_8__ {scalar_t__ dstart; scalar_t__ dend; } ;
struct TYPE_9__ {TYPE_1__ xdf2; TYPE_2__ xdf1; } ;
typedef TYPE_3__ xdfenv_t ;
typedef int mmfile_t ;


 int histogram_diff (int const*,TYPE_3__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ xdl_prepare_env (int *,int *,int const*,TYPE_3__*) ;

int xdl_do_histogram_diff(mmfile_t *file1, mmfile_t *file2,
 xpparam_t const *xpp, xdfenv_t *env)
{
 if (xdl_prepare_env(file1, file2, xpp, env) < 0)
  return -1;

 return histogram_diff(xpp, env,
  env->xdf1.dstart + 1, env->xdf1.dend - env->xdf1.dstart + 1,
  env->xdf2.dstart + 1, env->xdf2.dend - env->xdf2.dstart + 1);
}
