
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int git_time_t ;


 int approxidate_str (char const*,int ,int*) ;
 int parse_date_basic (char const*,int *,int*) ;
 int time (int *) ;

int git__date_parse(git_time_t *out, const char *date)
{
 time_t time_sec;
 git_time_t timestamp;
 int offset, error_ret=0;

 if (!parse_date_basic(date, &timestamp, &offset)) {
  *out = timestamp;
  return 0;
 }

 if (time(&time_sec) == -1)
  return -1;

 *out = approxidate_str(date, time_sec, &error_ret);
   return error_ret;
}
