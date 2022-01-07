
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BROWSER_TYPE_LEN ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* verify_browser (char*,char*) ;
 char* xstrdup (char const*) ;

int
is_crawler (const char *agent)
{
  char type[BROWSER_TYPE_LEN];
  char *browser, *a;

  if (agent == ((void*)0) || *agent == '\0')
    return 0;

  if ((a = xstrdup (agent), browser = verify_browser (a, type)) != ((void*)0))
    free (browser);
  free (a);

  return strcmp (type, "Crawlers") == 0 ? 1 : 0;
}
