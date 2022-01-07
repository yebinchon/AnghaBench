
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;


 int TIME_MAX ;
 int approxidate_careful (char const*,int*) ;
 int strcmp (char const*,char*) ;

int parse_expiry_date(const char *date, timestamp_t *timestamp)
{
 int errors = 0;

 if (!strcmp(date, "never") || !strcmp(date, "false"))
  *timestamp = 0;
 else if (!strcmp(date, "all") || !strcmp(date, "now"))
  *timestamp = TIME_MAX;
 else
  *timestamp = approxidate_careful(date, &errors);

 return errors;
}
