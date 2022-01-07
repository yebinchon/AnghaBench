
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {unsigned int cbm_len; unsigned long min_cbm_bits; } ;
struct rdt_resource {unsigned long default_ctrl; TYPE_1__ cache; } ;


 unsigned long find_first_bit (unsigned long*,unsigned int) ;
 unsigned int find_next_bit (unsigned long*,unsigned int,unsigned long) ;
 unsigned long find_next_zero_bit (unsigned long*,unsigned int,unsigned long) ;
 int kstrtoul (char*,int,unsigned long*) ;
 int rdt_last_cmd_printf (char*,...) ;
 int rdt_last_cmd_puts (char*) ;

bool cbm_validate_intel(char *buf, u32 *data, struct rdt_resource *r)
{
 unsigned long first_bit, zero_bit, val;
 unsigned int cbm_len = r->cache.cbm_len;
 int ret;

 ret = kstrtoul(buf, 16, &val);
 if (ret) {
  rdt_last_cmd_printf("Non-hex character in the mask %s\n", buf);
  return 0;
 }

 if (val == 0 || val > r->default_ctrl) {
  rdt_last_cmd_puts("Mask out of range\n");
  return 0;
 }

 first_bit = find_first_bit(&val, cbm_len);
 zero_bit = find_next_zero_bit(&val, cbm_len, first_bit);

 if (find_next_bit(&val, cbm_len, zero_bit) < cbm_len) {
  rdt_last_cmd_printf("The mask %lx has non-consecutive 1-bits\n", val);
  return 0;
 }

 if ((zero_bit - first_bit) < r->cache.min_cbm_bits) {
  rdt_last_cmd_printf("Need at least %d bits in the mask\n",
        r->cache.min_cbm_bits);
  return 0;
 }

 *data = val;
 return 1;
}
