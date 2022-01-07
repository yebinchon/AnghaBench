
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 int * current ;
 int mutex_unlock (int *) ;
 int prepare_lock ;
 int * prepare_owner ;
 scalar_t__ prepare_refcnt ;

__attribute__((used)) static void clk_prepare_unlock(void)
{
 WARN_ON_ONCE(prepare_owner != current);
 WARN_ON_ONCE(prepare_refcnt == 0);

 if (--prepare_refcnt)
  return;
 prepare_owner = ((void*)0);
 mutex_unlock(&prepare_lock);
}
