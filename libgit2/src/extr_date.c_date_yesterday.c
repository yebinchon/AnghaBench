
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int GIT_UNUSED (int*) ;
 int update_tm (struct tm*,struct tm*,int) ;

__attribute__((used)) static void date_yesterday(struct tm *tm, struct tm *now, int *num)
{
   GIT_UNUSED(num);
 update_tm(tm, now, 24*60*60);
}
