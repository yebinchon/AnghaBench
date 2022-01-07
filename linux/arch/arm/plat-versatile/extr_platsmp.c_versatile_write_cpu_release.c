
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_wmb () ;
 int sync_cache_w (int*) ;
 int versatile_cpu_release ;

__attribute__((used)) static void versatile_write_cpu_release(int val)
{
 versatile_cpu_release = val;
 smp_wmb();
 sync_cache_w(&versatile_cpu_release);
}
