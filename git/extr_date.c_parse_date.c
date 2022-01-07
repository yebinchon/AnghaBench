
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct strbuf {int dummy; } ;


 int date_string (int ,int,struct strbuf*) ;
 scalar_t__ parse_date_basic (char const*,int *,int*) ;

int parse_date(const char *date, struct strbuf *result)
{
 timestamp_t timestamp;
 int offset;
 if (parse_date_basic(date, &timestamp, &offset))
  return -1;
 date_string(timestamp, offset, result);
 return 0;
}
