
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_clear_cpu_cap (int *,unsigned int) ;

void setup_clear_cpu_cap(unsigned int feature)
{
 do_clear_cpu_cap(((void*)0), feature);
}
