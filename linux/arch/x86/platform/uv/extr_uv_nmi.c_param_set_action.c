
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kernel_param {int dummy; } ;
struct TYPE_3__ {int desc; int action; } ;


 int ACTION_LEN ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int pr_err (char*,char*,...) ;
 int pr_info (char*,int ) ;
 char* strchr (char*,char) ;
 int strcmp (char*,int ) ;
 int strcpy (int ,char*) ;
 int strncpy (char*,char const*,int) ;
 int uv_nmi_action ;
 TYPE_1__* valid_acts ;

__attribute__((used)) static int param_set_action(const char *val, const struct kernel_param *kp)
{
 int i;
 int n = ARRAY_SIZE(valid_acts);
 char arg[ACTION_LEN], *p;


 strncpy(arg, val, ACTION_LEN - 1);
 arg[ACTION_LEN - 1] = '\0';
 p = strchr(arg, '\n');
 if (p)
  *p = '\0';

 for (i = 0; i < n; i++)
  if (!strcmp(arg, valid_acts[i].action))
   break;

 if (i < n) {
  strcpy(uv_nmi_action, arg);
  pr_info("UV: New NMI action:%s\n", uv_nmi_action);
  return 0;
 }

 pr_err("UV: Invalid NMI action:%s, valid actions are:\n", arg);
 for (i = 0; i < n; i++)
  pr_err("UV: %-8s - %s\n",
   valid_acts[i].action, valid_acts[i].desc);
 return -EINVAL;
}
