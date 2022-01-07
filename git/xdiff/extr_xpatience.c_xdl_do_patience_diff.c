
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xpparam_t ;
struct TYPE_8__ {int nrec; } ;
struct TYPE_7__ {int nrec; } ;
struct TYPE_9__ {TYPE_2__ xdf2; TYPE_1__ xdf1; } ;
typedef TYPE_3__ xdfenv_t ;
typedef int mmfile_t ;


 int patience_diff (int *,int *,int const*,TYPE_3__*,int,int ,int,int ) ;
 scalar_t__ xdl_prepare_env (int *,int *,int const*,TYPE_3__*) ;

int xdl_do_patience_diff(mmfile_t *file1, mmfile_t *file2,
  xpparam_t const *xpp, xdfenv_t *env)
{
 if (xdl_prepare_env(file1, file2, xpp, env) < 0)
  return -1;


 return patience_diff(file1, file2, xpp, env,
   1, env->xdf1.nrec, 1, env->xdf2.nrec);
}
