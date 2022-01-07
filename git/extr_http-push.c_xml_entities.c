
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addstr_xml_quoted (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static char *xml_entities(const char *s)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_addstr_xml_quoted(&buf, s);
 return strbuf_detach(&buf, ((void*)0));
}
