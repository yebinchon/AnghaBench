
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush () ;
 int putc (char) ;

__attribute__((used)) static void putstr(const char *ptr)
{
 char c;

 while ((c = *ptr++) != '\0') {
  if (c == '\n')
   putc('\r');
  putc(c);
 }

 flush();
}
