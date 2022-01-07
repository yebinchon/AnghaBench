
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int DATE_MODE (int ) ;
 int HUMAN ;
 int atoi (char const*) ;
 int printf (char*,char const*,char*) ;
 char* show_date (int ,int ,int ) ;

__attribute__((used)) static void show_human_dates(const char **argv)
{
 for (; *argv; argv++) {
  time_t t = atoi(*argv);
  printf("%s -> %s\n", *argv, show_date(t, 0, DATE_MODE(HUMAN)));
 }
}
