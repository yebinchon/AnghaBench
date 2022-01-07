
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (int *,int ,char*,char const*,char const*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
append_spec_date_format (const char *date_format, const char *spec_format)
{
  char *s = xmalloc (snprintf (((void*)0), 0, "%s%s", date_format, spec_format) + 1);
  sprintf (s, "%s%s", date_format, spec_format);

  return s;
}
