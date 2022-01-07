
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_param {int dummy; } ;
struct TYPE_3__ {char* option; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t l1tf_vmx_mitigation ;
 int sprintf (char*,char*,...) ;
 TYPE_1__* vmentry_l1d_param ;

__attribute__((used)) static int vmentry_l1d_flush_get(char *s, const struct kernel_param *kp)
{
 if (WARN_ON_ONCE(l1tf_vmx_mitigation >= ARRAY_SIZE(vmentry_l1d_param)))
  return sprintf(s, "???\n");

 return sprintf(s, "%s\n", vmentry_l1d_param[l1tf_vmx_mitigation].option);
}
