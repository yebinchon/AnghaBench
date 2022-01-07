
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int atomic_or (int,int *) ;
 int clock_sync_word ;
 int * this_cpu_ptr (int *) ;

__attribute__((used)) static void enable_sync_clock(void)
{
 atomic_t *sw_ptr = this_cpu_ptr(&clock_sync_word);
 atomic_or(0x80000000, sw_ptr);
}
