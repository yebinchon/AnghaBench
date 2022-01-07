
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ExtKey; int Key; } ;
typedef TYPE_1__ uiAreaKeyEvent ;
struct TYPE_7__ {int scancode; int equiv; } ;
struct TYPE_6__ {int scancode; int equiv; } ;


 TYPE_4__* scancodeExtKeys ;
 TYPE_3__* scancodeKeys ;

int uiprivFromScancode(uintptr_t scancode, uiAreaKeyEvent *ke)
{
 int i;

 for (i = 0; scancodeKeys[i].scancode != 0xFFFF; i++)
  if (scancodeKeys[i].scancode == scancode) {
   ke->Key = scancodeKeys[i].equiv;
   return 1;
  }
 for (i = 0; scancodeExtKeys[i].scancode != 0xFFFF; i++)
  if (scancodeExtKeys[i].scancode == scancode) {
   ke->ExtKey = scancodeExtKeys[i].equiv;
   return 1;
  }
 return 0;
}
