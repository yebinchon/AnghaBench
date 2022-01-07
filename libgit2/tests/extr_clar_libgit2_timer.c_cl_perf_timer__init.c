
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cl_perf_timer ;


 int memset (int *,int ,int) ;

void cl_perf_timer__init(cl_perf_timer *t)
{
 memset(t, 0, sizeof(cl_perf_timer));
}
