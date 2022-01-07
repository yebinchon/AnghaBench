
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getc () ;
 int putc (char) ;
 int puts (char*) ;

void AT91F_WaitKeyPressed(void)
{
 int c;
     puts("KEY");
  c = getc();
 putc('\n');
}
