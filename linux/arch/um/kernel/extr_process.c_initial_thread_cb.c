
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int initial_thread_cb_skas (void (*) (void*),void*) ;
 int kmalloc_ok ;

void initial_thread_cb(void (*proc)(void *), void *arg)
{
 int save_kmalloc_ok = kmalloc_ok;

 kmalloc_ok = 0;
 initial_thread_cb_skas(proc, arg);
 kmalloc_ok = save_kmalloc_ok;
}
