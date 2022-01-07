
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_spin_unlock (int *) ;
 int vector_lock ;

void unlock_vector_lock(void)
{
 raw_spin_unlock(&vector_lock);
}
