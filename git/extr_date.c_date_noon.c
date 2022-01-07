
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int date_time (struct tm*,struct tm*,int) ;
 int pending_number (struct tm*,int*) ;

__attribute__((used)) static void date_noon(struct tm *tm, struct tm *now, int *num)
{
 pending_number(tm, num);
 date_time(tm, now, 12);
}
