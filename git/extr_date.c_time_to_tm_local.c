
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int *) ;

__attribute__((used)) static struct tm *time_to_tm_local(timestamp_t time)
{
 time_t t = time;
 return localtime(&t);
}
