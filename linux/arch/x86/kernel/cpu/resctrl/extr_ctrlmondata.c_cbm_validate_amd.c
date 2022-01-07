
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rdt_resource {unsigned long default_ctrl; } ;


 int kstrtoul (char*,int,unsigned long*) ;
 int rdt_last_cmd_printf (char*,char*) ;
 int rdt_last_cmd_puts (char*) ;

bool cbm_validate_amd(char *buf, u32 *data, struct rdt_resource *r)
{
 unsigned long val;
 int ret;

 ret = kstrtoul(buf, 16, &val);
 if (ret) {
  rdt_last_cmd_printf("Non-hex character in the mask %s\n", buf);
  return 0;
 }

 if (val > r->default_ctrl) {
  rdt_last_cmd_puts("Mask out of range\n");
  return 0;
 }

 *data = val;
 return 1;
}
