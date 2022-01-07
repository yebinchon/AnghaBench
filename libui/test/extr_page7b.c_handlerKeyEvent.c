
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char Key; int Up; } ;
typedef TYPE_1__ uiAreaKeyEvent ;
typedef int uiAreaHandler ;
typedef int uiArea ;



__attribute__((used)) static int handlerKeyEvent(uiAreaHandler *ah, uiArea *a, uiAreaKeyEvent *e)
{
 if (e->Key == 'h' && !e->Up) {

  return 1;
 }
 return 0;
}
