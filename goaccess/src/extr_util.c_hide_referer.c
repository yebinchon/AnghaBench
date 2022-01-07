
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hide_referer_idx; char** hide_referers; } ;


 TYPE_1__ conf ;
 int free (char*) ;
 scalar_t__ wc_match (char*,char*) ;
 char* xstrdup (char const*) ;

int
hide_referer (const char *host)
{
  char *needle = ((void*)0);
  int i, ignore = 0;

  if (conf.hide_referer_idx == 0)
    return 0;
  if (host == ((void*)0) || *host == '\0')
    return 0;

  needle = xstrdup (host);
  for (i = 0; i < conf.hide_referer_idx; ++i) {
    if (conf.hide_referers[i] == ((void*)0) || *conf.hide_referers[i] == '\0')
      continue;

    if (wc_match (conf.hide_referers[i], needle)) {
      ignore = 1;
      goto out;
    }
  }
out:
  free (needle);

  return ignore;
}
