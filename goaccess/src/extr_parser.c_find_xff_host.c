
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type_ip; int * host; } ;
typedef TYPE_1__ GLogItem ;


 int SPEC_SFMT_MIS ;
 int TYPE_IPINV ;
 char* extract_braces (char**) ;
 int free (char*) ;
 int invalid_ipaddr (char*,int*) ;
 char* parsed_string (char*,char**,int ) ;
 int spec_err (TYPE_1__*,int ,char,char*) ;
 int strcspn (char*,char*) ;
 int * xstrdup (char*) ;

__attribute__((used)) static int
find_xff_host (GLogItem * logitem, char **str, char **p)
{
  char *ptr = ((void*)0), *tkn = ((void*)0), *skips = ((void*)0);
  int invalid_ip = 1, len = 0, type_ip = TYPE_IPINV;

  if (!(skips = extract_braces (p)))
    return spec_err (logitem, SPEC_SFMT_MIS, **p, "{}");

  ptr = *str;
  while (*ptr != '\0') {
    if ((len = strcspn (ptr, skips)) == 0) {
      len++, ptr++;
      goto move;
    }

    ptr += len;

    if (!(tkn = parsed_string (ptr, str, 0)))
      break;

    invalid_ip = invalid_ipaddr (tkn, &type_ip);

    if (logitem->host && invalid_ip) {
      free (tkn);
      break;
    }
    if (!logitem->host && !invalid_ip) {
      logitem->host = xstrdup (tkn);
      logitem->type_ip = type_ip;
    }
    free (tkn);

  move:
    *str += len;
  }

  free (skips);

  return logitem->host == ((void*)0);
}
