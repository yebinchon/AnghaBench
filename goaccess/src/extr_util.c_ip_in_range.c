
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignore_ip_idx; char** ignore_ips; } ;


 TYPE_1__ conf ;
 int free (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ within_range (char const*,char*,char*) ;
 char* xstrdup (char*) ;

int
ip_in_range (const char *ip)
{
  char *start = ((void*)0), *end, *dash;
  int i;

  for (i = 0; i < conf.ignore_ip_idx; ++i) {
    end = ((void*)0);
    if (conf.ignore_ips[i] == ((void*)0) || *conf.ignore_ips[i] == '\0')
      continue;

    start = xstrdup (conf.ignore_ips[i]);

    if ((dash = strchr (start, '-')) != ((void*)0)) {
      *dash = '\0';
      end = dash + 1;
    }


    if (end == ((void*)0) && start) {
      if (strcmp (ip, start) == 0) {
        free (start);
        return 1;
      }
    }

    else if (start && end) {
      if (within_range (ip, start, end)) {
        free (start);
        return 1;
      }
    }
    free (start);
  }

  return 0;
}
