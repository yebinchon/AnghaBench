
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* memchr (char const*,char,int) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int interpret_empty_at(const char *name, int namelen, int len, struct strbuf *buf)
{
 const char *next;

 if (len || name[1] == '{')
  return -1;


 next = memchr(name + len + 1, '@', namelen - len - 1);
 if (next && next[1] != '{')
  return -1;
 if (!next)
  next = name + namelen;
 if (next != name + 1)
  return -1;

 strbuf_reset(buf);
 strbuf_add(buf, "HEAD", 4);
 return 1;
}
