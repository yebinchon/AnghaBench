
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 int mutex_unlock (int *) ;
 int pmc_refcount ;
 int pmc_reserve_mutex ;
 int release_ds_buffers () ;
 int release_pmc_hardware () ;

void x86_release_hardware(void)
{
 if (atomic_dec_and_mutex_lock(&pmc_refcount, &pmc_reserve_mutex)) {
  release_pmc_hardware();
  release_ds_buffers();
  mutex_unlock(&pmc_reserve_mutex);
 }
}
