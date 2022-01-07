
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;
typedef int local64_t ;


 int local64_set (int *,int ) ;

__attribute__((used)) static int param_set_local64(const char *val, const struct kernel_param *kp)
{

 local64_set((local64_t *)kp->arg, 0);
 return 0;
}
