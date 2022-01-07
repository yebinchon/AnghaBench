
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
typedef int time_t ;
struct tm {int dummy; } ;


 int gm_time_t (int ,int) ;
 struct tm* gmtime (int *) ;

__attribute__((used)) static struct tm *time_to_tm(timestamp_t time, int tz)
{
 time_t t = gm_time_t(time, tz);
 return gmtime(&t);
}
