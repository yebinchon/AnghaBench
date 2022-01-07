
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtime (int const*) ;
 int memcpy (struct tm*,struct tm*,int) ;

struct tm *
p_gmtime_r (const time_t *timer, struct tm *result)
{
 struct tm *local_result;
 local_result = gmtime (timer);

 if (local_result == ((void*)0) || result == ((void*)0))
  return ((void*)0);

 memcpy (result, local_result, sizeof (struct tm));
 return result;
}
