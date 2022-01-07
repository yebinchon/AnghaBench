
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,size_t) ;

__attribute__((used)) static const char *next_line(const char *line, size_t len)
{
 const char *nl = memchr(line, '\n', len);
 if (!nl)
  return line + len;
 return nl + 1;
}
