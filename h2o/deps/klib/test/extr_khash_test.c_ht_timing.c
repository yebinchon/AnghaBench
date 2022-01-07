
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ clock_t ;


 double CLOCKS_PER_SEC ;
 scalar_t__ clock () ;
 int printf (char*,double) ;
 void stub1 () ;

void ht_timing(void (*f)(void))
{
 clock_t t = clock();
 (*f)();
 printf("[ht_timing] %.3lf sec\n", (double)(clock() - t) / CLOCKS_PER_SEC);
}
