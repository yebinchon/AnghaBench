
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** xcalloc (int,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
set_browser (char ***list, int idx, const char *browser, const char *type)
{
  list[idx] = xcalloc (2, sizeof (char *));
  list[idx][0] = xstrdup (browser);
  list[idx][1] = xstrdup (type);
}
