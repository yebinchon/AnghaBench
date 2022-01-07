
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;





 int ipmi_send_panic_event ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int panic_op_read_handler(char *buffer, const struct kernel_param *kp)
{
 switch (ipmi_send_panic_event) {
 case 129:
  strcpy(buffer, "none");
  break;

 case 130:
  strcpy(buffer, "event");
  break;

 case 128:
  strcpy(buffer, "string");
  break;

 default:
  strcpy(buffer, "???");
  break;
 }

 return strlen(buffer);
}
