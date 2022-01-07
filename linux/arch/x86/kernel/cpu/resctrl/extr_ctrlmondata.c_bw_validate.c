
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long min_bw; scalar_t__ bw_gran; int delay_linear; } ;
struct rdt_resource {unsigned long default_ctrl; TYPE_1__ membw; } ;


 int is_mba_sc (struct rdt_resource*) ;
 int kstrtoul (char*,int,unsigned long*) ;
 int rdt_last_cmd_printf (char*,...) ;
 int rdt_last_cmd_puts (char*) ;
 unsigned long roundup (unsigned long,unsigned long) ;

__attribute__((used)) static bool bw_validate(char *buf, unsigned long *data, struct rdt_resource *r)
{
 unsigned long bw;
 int ret;




 if (!r->membw.delay_linear) {
  rdt_last_cmd_puts("No support for non-linear MB domains\n");
  return 0;
 }

 ret = kstrtoul(buf, 10, &bw);
 if (ret) {
  rdt_last_cmd_printf("Non-decimal digit in MB value %s\n", buf);
  return 0;
 }

 if ((bw < r->membw.min_bw || bw > r->default_ctrl) &&
     !is_mba_sc(r)) {
  rdt_last_cmd_printf("MB value %ld out of range [%d,%d]\n", bw,
        r->membw.min_bw, r->default_ctrl);
  return 0;
 }

 *data = roundup(bw, (unsigned long)r->membw.bw_gran);
 return 1;
}
