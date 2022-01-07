
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_yday; int tm_hour; int tm_min; int tm_sec; } ;


 int snprintf (char*,size_t,char*,int,char const*,...) ;

void format_timer_display (struct tm *tm, char *buf, size_t len)
{
  const char *const time_entities_s[] = { "year", "day", "hour", "min", "sec" };
  const char *const time_entities_m[] = { "years", "days", "hours", "mins", "secs" };

  if (tm->tm_year - 70)
  {
    const char *time_entity1 = ((tm->tm_year - 70) == 1) ? time_entities_s[0] : time_entities_m[0];
    const char *time_entity2 = ( tm->tm_yday == 1) ? time_entities_s[1] : time_entities_m[1];

    snprintf (buf, len, "%d %s, %d %s", tm->tm_year - 70, time_entity1, tm->tm_yday, time_entity2);
  }
  else if (tm->tm_yday)
  {
    const char *time_entity1 = (tm->tm_yday == 1) ? time_entities_s[1] : time_entities_m[1];
    const char *time_entity2 = (tm->tm_hour == 1) ? time_entities_s[2] : time_entities_m[2];

    snprintf (buf, len, "%d %s, %d %s", tm->tm_yday, time_entity1, tm->tm_hour, time_entity2);
  }
  else if (tm->tm_hour)
  {
    const char *time_entity1 = (tm->tm_hour == 1) ? time_entities_s[2] : time_entities_m[2];
    const char *time_entity2 = (tm->tm_min == 1) ? time_entities_s[3] : time_entities_m[3];

    snprintf (buf, len, "%d %s, %d %s", tm->tm_hour, time_entity1, tm->tm_min, time_entity2);
  }
  else if (tm->tm_min)
  {
    const char *time_entity1 = (tm->tm_min == 1) ? time_entities_s[3] : time_entities_m[3];
    const char *time_entity2 = (tm->tm_sec == 1) ? time_entities_s[4] : time_entities_m[4];

    snprintf (buf, len, "%d %s, %d %s", tm->tm_min, time_entity1, tm->tm_sec, time_entity2);
  }
  else
  {
    const char *time_entity1 = (tm->tm_sec == 1) ? time_entities_s[4] : time_entities_m[4];

    snprintf (buf, len, "%d %s", tm->tm_sec, time_entity1);
  }
}
