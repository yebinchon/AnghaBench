
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tm ;
struct tm {int tm_year; } ;
struct TYPE_3__ {int tm_year; } ;


 int has_timestamp (char const*) ;
 TYPE_1__* localtime (int *) ;
 int memset (struct tm*,int ,int) ;
 TYPE_1__* now_tm ;
 scalar_t__ str_to_time (char const*,char const*,struct tm*) ;
 scalar_t__ strftime (char*,int,char const*,struct tm*) ;
 int * strpbrk (char const*,char*) ;
 int time (int *) ;
 int timestamp ;

int
convert_date (char *res, const char *data, const char *from, const char *to,
              int size)
{
  struct tm tm;

  memset (&tm, 0, sizeof (tm));
  timestamp = time (((void*)0));
  now_tm = localtime (&timestamp);

  if (str_to_time (data, from, &tm) != 0)
    return 1;


  if (!has_timestamp (from) && strpbrk (from, "Yy") == ((void*)0))
    tm.tm_year = now_tm->tm_year;

  if (strftime (res, size, to, &tm) <= 0)
    return 1;

  return 0;
}
