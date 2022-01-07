
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int name; } ;
struct kernel_param {int dummy; } ;
struct ipmi_plat_data {int addr; int type; int space; } ;
struct device {int dummy; } ;
typedef int h ;
typedef enum hotmod_op { ____Placeholder_hotmod_op } hotmod_op ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HM_ADD ;
 int atomic_inc_return (int *) ;
 scalar_t__ dev_is_platform (struct device*) ;
 int hotmod_nr ;
 int ipmi_platform_add (char*,int ,struct ipmi_plat_data*) ;
 struct device* ipmi_si_remove_by_data (int ,int ,int ) ;
 scalar_t__ isspace (char) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int memset (struct ipmi_plat_data*,int ,int) ;
 int parse_hotmod_str (char*,int*,struct ipmi_plat_data*) ;
 int platform_device_unregister (struct platform_device*) ;
 int put_device (struct device*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;
 unsigned int strlen (char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int hotmod_handler(const char *val, const struct kernel_param *kp)
{
 char *str = kstrdup(val, GFP_KERNEL), *curr, *next;
 int rv;
 struct ipmi_plat_data h;
 unsigned int len;
 int ival;

 if (!str)
  return -ENOMEM;


 len = strlen(str);
 ival = len - 1;
 while ((ival >= 0) && isspace(str[ival])) {
  str[ival] = '\0';
  ival--;
 }

 for (curr = str; curr; curr = next) {
  enum hotmod_op op;

  next = strchr(curr, ':');
  if (next) {
   *next = '\0';
   next++;
  }

  memset(&h, 0, sizeof(h));
  rv = parse_hotmod_str(curr, &op, &h);
  if (rv)
   goto out;

  if (op == HM_ADD) {
   ipmi_platform_add("hotmod-ipmi-si",
       atomic_inc_return(&hotmod_nr),
       &h);
  } else {
   struct device *dev;

   dev = ipmi_si_remove_by_data(h.space, h.type, h.addr);
   if (dev && dev_is_platform(dev)) {
    struct platform_device *pdev;

    pdev = to_platform_device(dev);
    if (strcmp(pdev->name, "hotmod-ipmi-si") == 0)
     platform_device_unregister(pdev);
   }
   if (dev)
    put_device(dev);
  }
 }
 rv = len;
out:
 kfree(str);
 return rv;
}
