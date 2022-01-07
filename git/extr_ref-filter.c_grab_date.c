
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp_t ;
struct date_mode {int member_0; } ;
struct atom_value {scalar_t__ value; void* s; } ;


 int DATE_NORMAL ;
 scalar_t__ ERANGE ;
 long LONG_MAX ;
 long LONG_MIN ;
 scalar_t__ TIME_MAX ;
 scalar_t__ errno ;
 int parse_date_format (char const*,struct date_mode*) ;
 scalar_t__ parse_timestamp (char const*,char**,int) ;
 char* show_date (scalar_t__,long,struct date_mode*) ;
 char* strchr (char const*,char) ;
 char* strstr (char const*,char*) ;
 long strtol (char*,int *,int) ;
 void* xstrdup (char*) ;

__attribute__((used)) static void grab_date(const char *buf, struct atom_value *v, const char *atomname)
{
 const char *eoemail = strstr(buf, "> ");
 char *zone;
 timestamp_t timestamp;
 long tz;
 struct date_mode date_mode = { DATE_NORMAL };
 const char *formatp;







 formatp = strchr(atomname, ':');
 if (formatp != ((void*)0)) {
  formatp++;
  parse_date_format(formatp, &date_mode);
 }

 if (!eoemail)
  goto bad;
 timestamp = parse_timestamp(eoemail + 2, &zone, 10);
 if (timestamp == TIME_MAX)
  goto bad;
 tz = strtol(zone, ((void*)0), 10);
 if ((tz == LONG_MIN || tz == LONG_MAX) && errno == ERANGE)
  goto bad;
 v->s = xstrdup(show_date(timestamp, tz, &date_mode));
 v->value = timestamp;
 return;
 bad:
 v->s = xstrdup("");
 v->value = 0;
}
