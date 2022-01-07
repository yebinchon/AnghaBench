
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fore200e {int dummy; } ;


 scalar_t__ fore200e_monitor_getc (struct fore200e*) ;
 int fore200e_monitor_putc (struct fore200e*,int ) ;

__attribute__((used)) static void fore200e_monitor_puts(struct fore200e *fore200e, char *str)
{
    while (*str) {


 while (fore200e_monitor_getc(fore200e) >= 0);

 fore200e_monitor_putc(fore200e, *str++);
    }

    while (fore200e_monitor_getc(fore200e) >= 0);
}
