
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ is_absolute_path (char const*) ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int system_prefix () ;
 char* xstrdup (char const*) ;

char *system_path(const char *path)
{
 struct strbuf d = STRBUF_INIT;

 if (is_absolute_path(path))
  return xstrdup(path);

 strbuf_addf(&d, "%s/%s", system_prefix(), path);
 return strbuf_detach(&d, ((void*)0));
}
