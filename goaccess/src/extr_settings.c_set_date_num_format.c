
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* date_num_format; } ;


 TYPE_1__ conf ;
 int free (char*) ;
 scalar_t__ is_date_abbreviated (char*) ;
 char* set_format_date () ;
 scalar_t__ snprintf (char*,int,char*) ;
 int strlen (char*) ;
 scalar_t__ strpbrk (char*,char*) ;
 char* xcalloc (int,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
set_date_num_format (void)
{
  char *fdate = ((void*)0), *buf = ((void*)0);
  int buflen = 0, flen = 0;

  fdate = set_format_date ();
  if (!fdate)
    return 1;

  if (is_date_abbreviated (fdate)) {
    free (fdate);
    conf.date_num_format = xstrdup ("%Y%m%d");
    return 0;
  }

  flen = strlen (fdate) + 1;
  buf = xcalloc (flen, sizeof (char));

  if (strpbrk (fdate, "Yy"))
    buflen += snprintf (buf + buflen, flen - buflen, "%%Y");
  if (strpbrk (fdate, "hbmB"))
    buflen += snprintf (buf + buflen, flen - buflen, "%%m");
  if (strpbrk (fdate, "de"))
    buflen += snprintf (buf + buflen, flen - buflen, "%%d");

  conf.date_num_format = buf;
  free (fdate);

  return buflen == 0 ? 1 : 0;
}
