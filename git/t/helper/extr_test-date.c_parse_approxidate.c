
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;


 int DATE_MODE (int ) ;
 int ISO8601 ;
 int approxidate_relative (char const*) ;
 int printf (char*,char const*,char*) ;
 char* show_date (int ,int ,int ) ;

__attribute__((used)) static void parse_approxidate(const char **argv)
{
 for (; *argv; argv++) {
  timestamp_t t;
  t = approxidate_relative(*argv);
  printf("%s -> %s\n", *argv, show_date(t, 0, DATE_MODE(ISO8601)));
 }
}
