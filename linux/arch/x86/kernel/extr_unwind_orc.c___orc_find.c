
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_entry {int dummy; } ;


 unsigned long orc_ip (int*) ;

__attribute__((used)) static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
        unsigned int num_entries, unsigned long ip)
{
 int *first = ip_table;
 int *last = ip_table + num_entries - 1;
 int *mid = first, *found = first;

 if (!num_entries)
  return ((void*)0);







 while (first <= last) {
  mid = first + ((last - first) / 2);

  if (orc_ip(mid) <= ip) {
   found = mid;
   first = mid + 1;
  } else
   last = mid - 1;
 }

 return u_table + (found - ip_table);
}
