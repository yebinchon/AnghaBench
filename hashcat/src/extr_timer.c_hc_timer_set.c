
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hc_timer_t ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,int *) ;
 int gettimeofday (int *,int *) ;

void hc_timer_set (hc_timer_t* a)
{



  clock_gettime (CLOCK_MONOTONIC, a);

}
