
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef int timestamp_t ;
typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_isdst; int tm_hour; int tm_min; int tm_sec; } ;


 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (char const) ;
 int match_alpha (char const*,struct tm*,int*) ;
 int match_digit (char const*,struct tm*,int*,int*) ;
 int match_object_header_date (char const*,int*,int*) ;
 int match_tz (char const*,int*) ;
 int memset (struct tm*,int ,int) ;
 scalar_t__ mktime (struct tm*) ;
 int tm_to_time_t (struct tm*) ;

int parse_date_basic(const char *date, timestamp_t *timestamp, int *offset)
{
 struct tm tm;
 int tm_gmt;
 timestamp_t dummy_timestamp;
 int dummy_offset;

 if (!timestamp)
  timestamp = &dummy_timestamp;
 if (!offset)
  offset = &dummy_offset;

 memset(&tm, 0, sizeof(tm));
 tm.tm_year = -1;
 tm.tm_mon = -1;
 tm.tm_mday = -1;
 tm.tm_isdst = -1;
 tm.tm_hour = -1;
 tm.tm_min = -1;
 tm.tm_sec = -1;
 *offset = -1;
 tm_gmt = 0;

 if (*date == '@' &&
     !match_object_header_date(date + 1, timestamp, offset))
  return 0;
 for (;;) {
  int match = 0;
  unsigned char c = *date;


  if (!c || c == '\n')
   break;

  if (isalpha(c))
   match = match_alpha(date, &tm, offset);
  else if (isdigit(c))
   match = match_digit(date, &tm, offset, &tm_gmt);
  else if ((c == '-' || c == '+') && isdigit(date[1]))
   match = match_tz(date, offset);

  if (!match) {

   match = 1;
  }

  date += match;
 }


 *timestamp = tm_to_time_t(&tm);
 if (*timestamp == -1)
  return -1;

 if (*offset == -1) {
  time_t temp_time;


  tm.tm_isdst = -1;
  temp_time = mktime(&tm);
  if ((time_t)*timestamp > temp_time) {
   *offset = ((time_t)*timestamp - temp_time) / 60;
  } else {
   *offset = -(int)((temp_time - (time_t)*timestamp) / 60);
  }
 }

 if (!tm_gmt)
  *timestamp -= *offset * 60;
 return 0;
}
