
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_entry {int dummy; } ;


 int* cur_orc_ip_table ;
 struct orc_entry* cur_orc_table ;

__attribute__((used)) static void orc_sort_swap(void *_a, void *_b, int size)
{
 struct orc_entry *orc_a, *orc_b;
 struct orc_entry orc_tmp;
 int *a = _a, *b = _b, tmp;
 int delta = _b - _a;


 tmp = *a;
 *a = *b + delta;
 *b = tmp - delta;


 orc_a = cur_orc_table + (a - cur_orc_ip_table);
 orc_b = cur_orc_table + (b - cur_orc_ip_table);
 orc_tmp = *orc_a;
 *orc_a = *orc_b;
 *orc_b = orc_tmp;
}
