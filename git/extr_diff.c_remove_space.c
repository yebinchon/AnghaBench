
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (unsigned char) ;

__attribute__((used)) static int remove_space(char *line, int len)
{
 int i;
 char *dst = line;
 unsigned char c;

 for (i = 0; i < len; i++)
  if (!isspace((c = line[i])))
   *dst++ = c;

 return dst - line;
}
