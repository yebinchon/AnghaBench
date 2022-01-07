
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,int,size_t) ;

__attribute__((used)) static const char *end_of_token(const char *s, int c, size_t n)
{
 const char *next = memchr(s, c, n);
 if (!next)
  next = s + n;
 return next;
}
