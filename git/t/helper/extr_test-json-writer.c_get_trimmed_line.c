
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fgets (char*,int,int ) ;
 int stdin ;
 int strlen (char*) ;

__attribute__((used)) static char *get_trimmed_line(char *buf, int buf_size)
{
 int len;

 if (!fgets(buf, buf_size, stdin))
  return ((void*)0);

 len = strlen(buf);
 while (len > 0) {
  char c = buf[len - 1];
  if (c == '\n' || c == '\r' || c == ' ' || c == '\t')
   buf[--len] = 0;
  else
   break;
 }

 while (*buf == ' ' || *buf == '\t')
  buf++;

 return buf;
}
