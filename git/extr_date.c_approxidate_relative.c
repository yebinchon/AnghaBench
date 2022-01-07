
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct timeval {int dummy; } ;


 int approxidate_str (char const*,struct timeval const*,int*) ;
 int get_time (struct timeval*) ;
 int parse_date_basic (char const*,int *,int*) ;

timestamp_t approxidate_relative(const char *date)
{
 struct timeval tv;
 timestamp_t timestamp;
 int offset;
 int errors = 0;

 if (!parse_date_basic(date, &timestamp, &offset))
  return timestamp;

 get_time(&tv);
 return approxidate_str(date, (const struct timeval *) &tv, &errors);
}
