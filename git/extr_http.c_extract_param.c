
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int isspace (char const) ;
 int strbuf_addch (struct strbuf*,int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static int extract_param(const char *raw, const char *name,
    struct strbuf *out)
{
 size_t len = strlen(name);

 if (strncasecmp(raw, name, len))
  return -1;
 raw += len;

 if (*raw != '=')
  return -1;
 raw++;

 while (*raw && !isspace(*raw) && *raw != ';')
  strbuf_addch(out, *raw++);
 return 0;
}
