
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int IPMI_SEND_PANIC_EVENT ;
 int IPMI_SEND_PANIC_EVENT_NONE ;
 int IPMI_SEND_PANIC_EVENT_STRING ;
 int ipmi_send_panic_event ;
 scalar_t__ strcmp (char*,char*) ;
 int strncpy (char*,char const*,int) ;
 char* strstrip (char*) ;

__attribute__((used)) static int panic_op_write_handler(const char *val,
      const struct kernel_param *kp)
{
 char valcp[16];
 char *s;

 strncpy(valcp, val, 15);
 valcp[15] = '\0';

 s = strstrip(valcp);

 if (strcmp(s, "none") == 0)
  ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_NONE;
 else if (strcmp(s, "event") == 0)
  ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT;
 else if (strcmp(s, "string") == 0)
  ipmi_send_panic_event = IPMI_SEND_PANIC_EVENT_STRING;
 else
  return -EINVAL;

 return 0;
}
