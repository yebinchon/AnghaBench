
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 scalar_t__ isspace (char) ;
 int strlen (char const*) ;
 int strncasecmp (char*,char const*,int) ;

__attribute__((used)) static inline int cmp_header(const struct strbuf *line, const char *hdr)
{
 int len = strlen(hdr);
 return !strncasecmp(line->buf, hdr, len) && line->len > len &&
   line->buf[len] == ':' && isspace(line->buf[len + 1]);
}
