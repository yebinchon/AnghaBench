
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __hbird_read_stick () ;
 int __hbird_write_stick (unsigned long) ;

__attribute__((used)) static unsigned long hbtick_add_tick(unsigned long adj)
{
 unsigned long val;

 val = __hbird_read_stick() + adj;
 __hbird_write_stick(val);

 return val;
}
