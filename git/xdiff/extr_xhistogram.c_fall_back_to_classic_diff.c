
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xdfenv_t ;


 int XDF_DIFF_ALGORITHM_MASK ;
 int xdl_fall_back_diff (int *,TYPE_1__*,int,int,int,int) ;

__attribute__((used)) static int fall_back_to_classic_diff(xpparam_t const *xpp, xdfenv_t *env,
  int line1, int count1, int line2, int count2)
{
 xpparam_t xpparam;
 xpparam.flags = xpp->flags & ~XDF_DIFF_ALGORITHM_MASK;

 return xdl_fall_back_diff(env, &xpparam,
      line1, count1, line2, count2);
}
