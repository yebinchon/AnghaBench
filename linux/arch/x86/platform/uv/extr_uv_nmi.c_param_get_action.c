
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int sprintf (char*,char*,char*) ;
 char* uv_nmi_action ;

__attribute__((used)) static int param_get_action(char *buffer, const struct kernel_param *kp)
{
 return sprintf(buffer, "%s\n", uv_nmi_action);
}
