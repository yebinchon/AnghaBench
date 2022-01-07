
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct date_mode {int local; int strftime_fmt; int type; } ;


 int DATE_STRFTIME ;
 int die (char*,char const*) ;
 scalar_t__ isatty (int) ;
 scalar_t__ pager_in_use () ;
 int parse_date_type (char const*,char const**) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int xstrdup (char const*) ;

void parse_date_format(const char *format, struct date_mode *mode)
{
 const char *p;


 if (skip_prefix(format, "auto:", &p)) {
  if (isatty(1) || pager_in_use())
   format = p;
  else
   format = "default";
 }


 if (!strcmp(format, "local"))
  format = "default-local";

 mode->type = parse_date_type(format, &p);
 mode->local = 0;

 if (skip_prefix(p, "-local", &p))
  mode->local = 1;

 if (mode->type == DATE_STRFTIME) {
  if (!skip_prefix(p, ":", &p))
   die("date format missing colon separator: %s", format);
  mode->strftime_fmt = xstrdup(p);
 } else if (*p)
  die("unknown date format %s", format);
}
