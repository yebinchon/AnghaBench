
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int strbuf_splice (struct strbuf*,char const*,int ,char const*,int ) ;
 int strlen (char const*) ;
 char* strstr (int,char const*) ;

__attribute__((used)) static inline void strbuf_replace(struct strbuf *sb, const char *a, const char *b)
{
 const char *ptr = strstr(sb->buf, a);
 if (ptr)
  strbuf_splice(sb, ptr - sb->buf, strlen(a), b, strlen(b));
}
