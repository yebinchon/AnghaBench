
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int markeins_led (char*) ;
 int printk (char*) ;

__attribute__((used)) static void markeins_machine_restart(char *command)
{
 static void (*back_to_prom) (void) = (void (*)(void))0xbfc00000;

 printk("cannot EMMA2RH Mark-eins restart.\n");
 markeins_led("restart.");
 back_to_prom();
}
