
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_wmb () ;
 int spear_pen_release ;
 int sync_cache_w (int*) ;

__attribute__((used)) static void spear_write_pen_release(int val)
{
 spear_pen_release = val;
 smp_wmb();
 sync_cache_w(&spear_pen_release);
}
