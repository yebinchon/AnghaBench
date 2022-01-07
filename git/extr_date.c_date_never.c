
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int localtime_r (int *,struct tm*) ;

__attribute__((used)) static void date_never(struct tm *tm, struct tm *now, int *num)
{
 time_t n = 0;
 localtime_r(&n, tm);
 *num = 0;
}
