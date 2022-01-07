
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_plat_data {unsigned int type; unsigned int space; int addr_source; int slave_addr; int irq; int regshift; int regsize; int regspacing; int addr; int iftype; } ;
typedef enum hotmod_op { ____Placeholder_hotmod_op } hotmod_op ;


 int EINVAL ;
 int IPMI_PLAT_IF_SI ;
 int SI_HOTMOD ;
 int check_hotmod_int_op (char const*,char*,char*,int *) ;
 int hotmod_as ;
 int hotmod_ops ;
 int hotmod_si ;
 int kstrtoul (char const*,int ,int *) ;
 int parse_str (int ,unsigned int*,char*,char const**) ;
 int pr_warn (char*,char const*,...) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int parse_hotmod_str(const char *curr, enum hotmod_op *op,
       struct ipmi_plat_data *h)
{
 char *s, *o;
 int rv;
 unsigned int ival;

 h->iftype = IPMI_PLAT_IF_SI;
 rv = parse_str(hotmod_ops, &ival, "operation", &curr);
 if (rv)
  return rv;
 *op = ival;

 rv = parse_str(hotmod_si, &ival, "interface type", &curr);
 if (rv)
  return rv;
 h->type = ival;

 rv = parse_str(hotmod_as, &ival, "address space", &curr);
 if (rv)
  return rv;
 h->space = ival;

 s = strchr(curr, ',');
 if (s) {
  *s = '\0';
  s++;
 }
 rv = kstrtoul(curr, 0, &h->addr);
 if (rv) {
  pr_warn("Invalid hotmod address '%s': %d\n", curr, rv);
  return rv;
 }

 while (s) {
  curr = s;
  s = strchr(curr, ',');
  if (s) {
   *s = '\0';
   s++;
  }
  o = strchr(curr, '=');
  if (o) {
   *o = '\0';
   o++;
  }
  rv = check_hotmod_int_op(curr, o, "rsp", &h->regspacing);
  if (rv < 0)
   return rv;
  else if (rv)
   continue;
  rv = check_hotmod_int_op(curr, o, "rsi", &h->regsize);
  if (rv < 0)
   return rv;
  else if (rv)
   continue;
  rv = check_hotmod_int_op(curr, o, "rsh", &h->regshift);
  if (rv < 0)
   return rv;
  else if (rv)
   continue;
  rv = check_hotmod_int_op(curr, o, "irq", &h->irq);
  if (rv < 0)
   return rv;
  else if (rv)
   continue;
  rv = check_hotmod_int_op(curr, o, "ipmb", &h->slave_addr);
  if (rv < 0)
   return rv;
  else if (rv)
   continue;

  pr_warn("Invalid hotmod option '%s'\n", curr);
  return -EINVAL;
 }

 h->addr_source = SI_HOTMOD;
 return 0;
}
