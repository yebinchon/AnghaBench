
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* log_format; } ;
typedef int GLogItem ;


 TYPE_1__ conf ;
 int get_delim (char*,char*) ;
 scalar_t__ isspace (char) ;
 int memset (char*,int ,int) ;
 int parse_specifier (int *,char**,char*,char*) ;
 int special_specifier (int *,char**,char**) ;

__attribute__((used)) static int
parse_format (GLogItem * logitem, char *str)
{
  char end[2 + 1] = { 0 };
  char *lfmt = conf.log_format, *p = ((void*)0);
  int perc = 0, tilde = 0, optdelim = 0;

  if (str == ((void*)0) || *str == '\0')
    return 1;


  for (p = lfmt; *p; p++) {

    if (*p == '\\')
      continue;
    if (*p == '%') {
      perc++;
      continue;
    }
    if (*p == '~' && perc == 0) {
      tilde++;
      continue;
    }

    if (tilde && *p != '\0') {
      if ((str == ((void*)0)) || (*str == '\0'))
        return 0;
      if (special_specifier (logitem, &str, &p) == 1)
        return 1;
      tilde = 0;
    }

    else if (perc && *p != '\0') {
      if ((str == ((void*)0)) || (*str == '\0'))
        return 0;

      memset (end, 0, sizeof end);
      optdelim = get_delim (end, p);

      if (parse_specifier (logitem, &str, p, end) == 1)
        return 1;

      if (optdelim)
        p++;
      perc = 0;
    } else if (perc && isspace (p[0])) {
      return 1;
    } else {
      str++;
    }
  }

  return 0;
}
