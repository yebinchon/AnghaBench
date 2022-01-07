
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int EINVAL ;
 int IPMI_SET_TIMEOUT_HB_IF_NECESSARY ;
 int ipmi_set_timeout (int ) ;
 int simple_strtoul (char const*,char**,int ) ;
 scalar_t__ watchdog_user ;

__attribute__((used)) static int set_param_timeout(const char *val, const struct kernel_param *kp)
{
 char *endp;
 int l;
 int rv = 0;

 if (!val)
  return -EINVAL;
 l = simple_strtoul(val, &endp, 0);
 if (endp == val)
  return -EINVAL;

 *((int *)kp->arg) = l;
 if (watchdog_user)
  rv = ipmi_set_timeout(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);

 return rv;
}
