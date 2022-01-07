
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;





 int lid_init_state ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int param_get_lid_init_state(char *buffer,
        const struct kernel_param *kp)
{
 switch (lid_init_state) {
 case 128:
  return sprintf(buffer, "open");
 case 129:
  return sprintf(buffer, "method");
 case 130:
  return sprintf(buffer, "ignore");
 default:
  return sprintf(buffer, "invalid");
 }
 return 0;
}
