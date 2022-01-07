
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _prom_putchar (char) ;
 int prom_putchar_init () ;

void prom_putchar(char ch)
{
 if (!_prom_putchar)
  prom_putchar_init();

 _prom_putchar(ch);
}
