
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON_ONCE (int) ;
 int * current ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int prepare_lock ;
 int * prepare_owner ;
 int prepare_refcnt ;

__attribute__((used)) static void clk_prepare_lock(void)
{
 if (!mutex_trylock(&prepare_lock)) {
  if (prepare_owner == current) {
   prepare_refcnt++;
   return;
  }
  mutex_lock(&prepare_lock);
 }
 WARN_ON_ONCE(prepare_owner != ((void*)0));
 WARN_ON_ONCE(prepare_refcnt != 0);
 prepare_owner = current;
 prepare_refcnt = 1;
}
