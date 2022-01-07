
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long git_time_t ;


 unsigned long ULONG_MAX ;
 int strtol (char const*,char**,int) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int match_object_header_date(const char *date, git_time_t *timestamp, int *offset)
{
 char *end;
 unsigned long stamp;
 int ofs;

 if (*date < '0' || '9' <= *date)
  return -1;
 stamp = strtoul(date, &end, 10);
 if (*end != ' ' || stamp == ULONG_MAX || (end[1] != '+' && end[1] != '-'))
  return -1;
 date = end + 2;
 ofs = strtol(date, &end, 10);
 if ((*end != '\0' && (*end != '\n')) || end != date + 4)
  return -1;
 ofs = (ofs / 100) * 60 + (ofs % 100);
 if (date[-1] == '-')
  ofs = -ofs;
 *timestamp = stamp;
 *offset = ofs;
 return 0;
}
