
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die_errno (int ) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_getcwd (struct strbuf*) ;

char *xgetcwd(void)
{
 struct strbuf sb = STRBUF_INIT;
 if (strbuf_getcwd(&sb))
  die_errno(_("unable to get current working directory"));
 return strbuf_detach(&sb, ((void*)0));
}
