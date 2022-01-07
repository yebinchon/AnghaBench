
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay_fn (unsigned long) ;

void __delay(unsigned long loops)
{
 delay_fn(loops);
}
