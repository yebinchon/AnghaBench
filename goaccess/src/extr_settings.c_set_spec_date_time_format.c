
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* spec_date_time_num_format; char* spec_date_time_format; } ;


 TYPE_1__ conf ;
 scalar_t__ snprintf (char*,int,char*) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;
 char* xcalloc (int,int) ;

__attribute__((used)) static void
set_spec_date_time_format (void)
{
  char *buf = ((void*)0);
  const char *fmt = conf.spec_date_time_num_format;
  int buflen = 0, flen = 0;

  if (!fmt)
    return;

  flen = (strlen (fmt) * 2) + 1;
  buf = xcalloc (flen, sizeof (char));

  if (strchr (fmt, 'd'))
    buflen += snprintf (buf + buflen, flen - buflen, "%%d/");
  if (strchr (fmt, 'm'))
    buflen += snprintf (buf + buflen, flen - buflen, "%%b/");
  if (strchr (fmt, 'Y'))
    buflen += snprintf (buf + buflen, flen - buflen, "%%Y");
  if (strchr (fmt, 'H'))
    buflen += snprintf (buf + buflen, flen - buflen, ":%%H");

  conf.spec_date_time_format = buf;
}
