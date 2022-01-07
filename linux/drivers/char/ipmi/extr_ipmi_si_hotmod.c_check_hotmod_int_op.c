
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int pr_warn (char*,char const*) ;
 unsigned int simple_strtoul (char const*,char**,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int check_hotmod_int_op(const char *curr, const char *option,
          const char *name, unsigned int *val)
{
 char *n;

 if (strcmp(curr, name) == 0) {
  if (!option) {
   pr_warn("No option given for '%s'\n", curr);
   return -EINVAL;
  }
  *val = simple_strtoul(option, &n, 0);
  if ((*n != '\0') || (*option == '\0')) {
   pr_warn("Bad option given for '%s'\n", curr);
   return -EINVAL;
  }
  return 1;
 }
 return 0;
}
