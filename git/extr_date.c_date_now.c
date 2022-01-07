
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int update_tm (struct tm*,struct tm*,int ) ;

__attribute__((used)) static void date_now(struct tm *tm, struct tm *now, int *num)
{
 *num = 0;
 update_tm(tm, now, 0);
}
