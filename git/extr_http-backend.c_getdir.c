
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ daemon_avoid_alias (char*) ;
 int die (char*,...) ;
 int end_url_with_slash (struct strbuf*,char*) ;
 char* getenv (char*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char* getdir(void)
{
 struct strbuf buf = STRBUF_INIT;
 char *pathinfo = getenv("PATH_INFO");
 char *root = getenv("GIT_PROJECT_ROOT");
 char *path = getenv("PATH_TRANSLATED");

 if (root && *root) {
  if (!pathinfo || !*pathinfo)
   die("GIT_PROJECT_ROOT is set but PATH_INFO is not");
  if (daemon_avoid_alias(pathinfo))
   die("'%s': aliased", pathinfo);
  end_url_with_slash(&buf, root);
  if (pathinfo[0] == '/')
   pathinfo++;
  strbuf_addstr(&buf, pathinfo);
  return strbuf_detach(&buf, ((void*)0));
 } else if (path && *path) {
  return xstrdup(path);
 } else
  die("No GIT_PROJECT_ROOT or PATH_TRANSLATED from server");
 return ((void*)0);
}
