
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char*
fore200e_irq_itoa(int irq)
{
    static char str[8];
    sprintf(str, "%d", irq);
    return str;
}
