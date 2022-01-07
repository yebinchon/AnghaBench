
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_7__ {int rect; } ;
struct TYPE_8__ {int cvar; TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_10__ {int (* setBinding ) (int,char*) ;int cursory; int cursorx; } ;
struct TYPE_9__ {int bind1; int bind2; } ;


 int BindingIDFromName (int ) ;
 int Controls_SetConfig (scalar_t__) ;
 TYPE_6__* DC ;

 int K_CHAR_FLAG ;
 int K_ENTER ;

 int K_JOY1 ;
 int K_JOY2 ;
 int K_JOY3 ;
 int K_JOY4 ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 scalar_t__ Rect_ContainsPoint (int *,int ,int ) ;
 int g_bindCount ;
 TYPE_2__* g_bindItem ;
 TYPE_3__* g_bindings ;
 scalar_t__ g_waitingForKey ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int stub1 (int,char*) ;
 int stub2 (int,char*) ;
 int stub3 (int,char*) ;
 int stub4 (int,char*) ;
 int stub5 (int,char*) ;
 int stub6 (int,char*) ;

qboolean Item_Bind_HandleKey(itemDef_t *item, int key, qboolean down) {
 int id;
 int i;

 if (!g_waitingForKey)
 {
  if (down && ((key == K_MOUSE1 && Rect_ContainsPoint(&item->window.rect, DC->cursorx, DC->cursory))
    || key == K_ENTER || key == K_KP_ENTER || key == K_JOY1 || key == K_JOY2 || key == K_JOY3 || key == K_JOY4)) {
   g_waitingForKey = qtrue;
   g_bindItem = item;
  }
  return qtrue;
 }
 else
 {
  if (g_bindItem == ((void*)0)) {
   return qtrue;
  }

  if (key & K_CHAR_FLAG) {
   return qtrue;
  }

  switch (key)
  {
   case 128:
    g_waitingForKey = qfalse;
    return qtrue;

   case 129:
    id = BindingIDFromName(item->cvar);
    if (id != -1) {
     if( g_bindings[id].bind1 != -1 ) {
      DC->setBinding( g_bindings[id].bind1, "" );
      g_bindings[id].bind1 = -1;
     }
     if( g_bindings[id].bind2 != -1 ) {
      DC->setBinding( g_bindings[id].bind2, "" );
      g_bindings[id].bind2 = -1;
     }
    }
    Controls_SetConfig(qtrue);
    g_waitingForKey = qfalse;
    g_bindItem = ((void*)0);
    return qtrue;

   case '`':
    return qtrue;
  }
 }

 if (key != -1)
 {

  for (i=0; i < g_bindCount; i++)
  {

   if (g_bindings[i].bind2 == key) {
    g_bindings[i].bind2 = -1;
   }

   if (g_bindings[i].bind1 == key)
   {
    g_bindings[i].bind1 = g_bindings[i].bind2;
    g_bindings[i].bind2 = -1;
   }
  }
 }


 id = BindingIDFromName(item->cvar);

 if (id != -1) {
  if (key == -1) {
   if( g_bindings[id].bind1 != -1 ) {
    DC->setBinding( g_bindings[id].bind1, "" );
    g_bindings[id].bind1 = -1;
   }
   if( g_bindings[id].bind2 != -1 ) {
    DC->setBinding( g_bindings[id].bind2, "" );
    g_bindings[id].bind2 = -1;
   }
  }
  else if (g_bindings[id].bind1 == -1) {
   g_bindings[id].bind1 = key;
  }
  else if (g_bindings[id].bind1 != key && g_bindings[id].bind2 == -1) {
   g_bindings[id].bind2 = key;
  }
  else {
   DC->setBinding( g_bindings[id].bind1, "" );
   DC->setBinding( g_bindings[id].bind2, "" );
   g_bindings[id].bind1 = key;
   g_bindings[id].bind2 = -1;
  }
 }

 Controls_SetConfig(qtrue);
 g_waitingForKey = qfalse;

 return qtrue;
}
