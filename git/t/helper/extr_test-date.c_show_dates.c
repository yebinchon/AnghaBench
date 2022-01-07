
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct date_mode {int dummy; } ;


 int atoi (char*) ;
 int parse_date_format (char const*,struct date_mode*) ;
 int parse_timestamp (char const*,char**,int) ;
 int printf (char*,char const*,char*) ;
 char* show_date (int ,int,struct date_mode*) ;

__attribute__((used)) static void show_dates(const char **argv, const char *format)
{
 struct date_mode mode;

 parse_date_format(format, &mode);
 for (; *argv; argv++) {
  char *arg;
  timestamp_t t;
  int tz;





  t = parse_timestamp(*argv, &arg, 10);
  while (*arg == ' ')
   arg++;
  tz = atoi(arg);

  printf("%s -> %s\n", *argv, show_date(t, tz, &mode));
 }
}
