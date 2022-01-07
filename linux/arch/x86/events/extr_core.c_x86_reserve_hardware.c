
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int atomic_inc (int *) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmc_refcount ;
 int pmc_reserve_mutex ;
 int reserve_ds_buffers () ;
 int reserve_pmc_hardware () ;

int x86_reserve_hardware(void)
{
 int err = 0;

 if (!atomic_inc_not_zero(&pmc_refcount)) {
  mutex_lock(&pmc_reserve_mutex);
  if (atomic_read(&pmc_refcount) == 0) {
   if (!reserve_pmc_hardware())
    err = -EBUSY;
   else
    reserve_ds_buffers();
  }
  if (!err)
   atomic_inc(&pmc_refcount);
  mutex_unlock(&pmc_reserve_mutex);
 }

 return err;
}
