
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int atomic_andnot (int,int *) ;
 int atomic_inc (int *) ;
 int clock_sync_word ;
 int * this_cpu_ptr (int *) ;

__attribute__((used)) static void disable_sync_clock(void *dummy)
{
 atomic_t *sw_ptr = this_cpu_ptr(&clock_sync_word);






 atomic_andnot(0x80000000, sw_ptr);
 atomic_inc(sw_ptr);
}
