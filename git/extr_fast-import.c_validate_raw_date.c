
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 scalar_t__ errno ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int validate_raw_date(const char *src, struct strbuf *result)
{
 const char *orig_src = src;
 char *endp;
 unsigned long num;

 errno = 0;

 num = strtoul(src, &endp, 10);

 if (errno || endp == src || *endp != ' ')
  return -1;

 src = endp + 1;
 if (*src != '-' && *src != '+')
  return -1;

 num = strtoul(src + 1, &endp, 10);
 if (errno || endp == src + 1 || *endp || 1400 < num)
  return -1;

 strbuf_addstr(result, orig_src);
 return 0;
}
