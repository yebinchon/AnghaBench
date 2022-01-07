
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int versatile_lock ;
 int versatile_write_cpu_release (int) ;

void versatile_secondary_init(unsigned int cpu)
{




 versatile_write_cpu_release(-1);




 raw_spin_lock(&versatile_lock);
 raw_spin_unlock(&versatile_lock);
}
