
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char Key; int Up; scalar_t__ Modifiers; scalar_t__ Modifier; scalar_t__ ExtKey; } ;
typedef TYPE_1__ uiAreaKeyEvent ;
typedef int uiAreaHandler ;
typedef int uiArea ;


 int printf (char*,char*,int,int,int,int) ;
 int swallowKeys ;
 int uiCheckboxChecked (int ) ;

__attribute__((used)) static int handlerKeyEvent(uiAreaHandler *ah, uiArea *a, uiAreaKeyEvent *e)
{
 char k[4];

 k[0] = '\'';
 k[1] = e->Key;
 k[2] = '\'';
 k[3] = '\0';
 if (e->Key == 0) {
  k[0] = '0';
  k[1] = '\0';
 }
 printf("key key:%s extkey:%d mod:%d mods:%d up:%d\n",
  k,
  (int) e->ExtKey,
  (int) e->Modifier,
  (int) e->Modifiers,
  e->Up);
 return uiCheckboxChecked(swallowKeys);
}
