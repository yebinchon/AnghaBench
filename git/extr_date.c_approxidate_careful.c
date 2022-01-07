
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct timeval {int dummy; } ;


 int approxidate_str (char const*,struct timeval*,int*) ;
 int get_time (struct timeval*) ;
 int parse_date_basic (char const*,int *,int*) ;

timestamp_t approxidate_careful(const char *date, int *error_ret)
{
 struct timeval tv;
 timestamp_t timestamp;
 int offset;
 int dummy = 0;
 if (!error_ret)
  error_ret = &dummy;

 if (!parse_date_basic(date, &timestamp, &offset)) {
  *error_ret = 0;
  return timestamp;
 }

 get_time(&tv);
 return approxidate_str(date, &tv, error_ret);
}
