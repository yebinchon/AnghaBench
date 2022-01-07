
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_entry {scalar_t__ sp_reg; int end; } ;


 scalar_t__ ORC_REG_UNDEFINED ;
 int const* cur_orc_ip_table ;
 struct orc_entry* cur_orc_table ;
 unsigned long orc_ip (int const*) ;

__attribute__((used)) static int orc_sort_cmp(const void *_a, const void *_b)
{
 struct orc_entry *orc_a;
 const int *a = _a, *b = _b;
 unsigned long a_val = orc_ip(a);
 unsigned long b_val = orc_ip(b);

 if (a_val > b_val)
  return 1;
 if (a_val < b_val)
  return -1;







 orc_a = cur_orc_table + (a - cur_orc_ip_table);
 return orc_a->sp_reg == ORC_REG_UNDEFINED && !orc_a->end ? -1 : 1;
}
