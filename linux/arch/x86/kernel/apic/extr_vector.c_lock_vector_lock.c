
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_spin_lock (int *) ;
 int vector_lock ;

void lock_vector_lock(void)
{



 raw_spin_lock(&vector_lock);
}
