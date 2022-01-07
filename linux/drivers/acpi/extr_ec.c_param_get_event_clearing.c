
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;





 int ec_event_clearing ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int param_get_event_clearing(char *buffer,
        const struct kernel_param *kp)
{
 switch (ec_event_clearing) {
 case 128:
  return sprintf(buffer, "status");
 case 129:
  return sprintf(buffer, "query");
 case 130:
  return sprintf(buffer, "event");
 default:
  return sprintf(buffer, "invalid");
 }
 return 0;
}
