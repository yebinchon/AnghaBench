
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignore_referer_idx; char** ignore_referers; } ;


 TYPE_1__ conf ;
 int free (char*) ;
 scalar_t__ wc_match (char*,char*) ;
 char* xstrdup (char const*) ;

int
ignore_referer (const char *host)
{
  char *needle = ((void*)0);
  int i, ignore = 0;

  if (conf.ignore_referer_idx == 0)
    return 0;
  if (host == ((void*)0) || *host == '\0')
    return 0;

  needle = xstrdup (host);
  for (i = 0; i < conf.ignore_referer_idx; ++i) {
    if (conf.ignore_referers[i] == ((void*)0) || *conf.ignore_referers[i] == '\0')
      continue;

    if (wc_match (conf.ignore_referers[i], needle)) {
      ignore = 1;
      goto out;
    }
  }
out:
  free (needle);

  return ignore;
}
