
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {int dummy; } ;
typedef int loff_t ;


 int lasat_write_eeprom_info () ;
 int proc_dostring (struct ctl_table*,int,void*,size_t*,int *) ;

int proc_dolasatstring(struct ctl_table *table, int write,
         void *buffer, size_t *lenp, loff_t *ppos)
{
 int r;

 r = proc_dostring(table, write, buffer, lenp, ppos);
 if ((!write) || r)
  return r;

 lasat_write_eeprom_info();

 return 0;
}
