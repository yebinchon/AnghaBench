
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,int) ;

__attribute__((used)) static int is_in(const char *s, int ch)
{

 if (ch == '\0')
  return 0;
 return !!strchr(s, ch);
}
