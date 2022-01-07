
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_setlen (struct strbuf*,int ) ;
 char* strcasestr (char const*,char const*) ;
 size_t strcspn (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int slurp_attr(const char *line, const char *name, struct strbuf *attr)
{
 const char *ends, *ap = strcasestr(line, name);
 size_t sz;

 strbuf_setlen(attr, 0);
 if (!ap)
  return 0;
 ap += strlen(name);
 if (*ap == '"') {
  ap++;
  ends = "\"";
 }
 else
  ends = "; \t";
 sz = strcspn(ap, ends);
 strbuf_add(attr, ap, sz);
 return 1;
}
