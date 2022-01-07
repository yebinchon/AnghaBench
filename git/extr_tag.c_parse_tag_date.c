
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;


 int parse_timestamp (char const*,int *,int) ;

__attribute__((used)) static timestamp_t parse_tag_date(const char *buf, const char *tail)
{
 const char *dateptr;

 while (buf < tail && *buf++ != '>')
            ;
 if (buf >= tail)
  return 0;
 dateptr = buf;
 while (buf < tail && *buf++ != '\n')
            ;
 if (buf >= tail)
  return 0;

 return parse_timestamp(dateptr, ((void*)0), 10);
}
