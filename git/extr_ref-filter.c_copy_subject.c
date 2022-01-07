
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xmemdupz (char const*,unsigned long) ;

__attribute__((used)) static char *copy_subject(const char *buf, unsigned long len)
{
 char *r = xmemdupz(buf, len);
 int i;

 for (i = 0; i < len; i++)
  if (r[i] == '\n')
   r[i] = ' ';

 return r;
}
