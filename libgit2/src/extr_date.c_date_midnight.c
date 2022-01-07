
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int GIT_UNUSED (int*) ;
 int date_time (struct tm*,struct tm*,int ) ;

__attribute__((used)) static void date_midnight(struct tm *tm, struct tm *now, int *num)
{
   GIT_UNUSED(num);
 date_time(tm, now, 0);
}
