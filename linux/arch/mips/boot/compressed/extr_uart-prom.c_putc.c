
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_putchar (char) ;

void putc(char c)
{
 prom_putchar(c);
}
