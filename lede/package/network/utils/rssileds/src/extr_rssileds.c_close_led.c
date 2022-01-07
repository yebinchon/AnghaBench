
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led {struct led* sysfspath; int controlfd; } ;


 int fclose (int ) ;
 int free (struct led*) ;

void close_led(struct led **led)
{
 fclose((*led)->controlfd);
 free((*led)->sysfspath);
 free((*led));
 (*led)=((void*)0);
}
