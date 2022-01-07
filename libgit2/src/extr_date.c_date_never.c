
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int tm ;


 int GIT_UNUSED (int*) ;
 int p_localtime_r (int *,int*) ;

__attribute__((used)) static void date_never(struct tm *tm, struct tm *now, int *num)
{
 time_t n = 0;
   GIT_UNUSED(now);
   GIT_UNUSED(num);
 p_localtime_r(&n, tm);
}
