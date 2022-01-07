
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int Up; int Modifier; int Modifiers; scalar_t__ ExtKey; scalar_t__ Key; } ;
typedef TYPE_1__ uiAreaKeyEvent ;
struct TYPE_13__ {TYPE_5__* ah; } ;
typedef TYPE_2__ uiArea ;
typedef int guint ;
struct TYPE_17__ {scalar_t__ keyval; scalar_t__ extkey; } ;
struct TYPE_16__ {scalar_t__ keyval; int mod; } ;
struct TYPE_15__ {int (* KeyEvent ) (TYPE_5__*,TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_14__ {scalar_t__ keyval; scalar_t__ hardware_keycode; int window; int state; } ;
typedef TYPE_3__ GdkEventKey ;


 scalar_t__ GDK_KEY_Print ;
 TYPE_9__* extKeys ;
 TYPE_8__* modKeys ;
 int stub1 (TYPE_5__*,TYPE_2__*,TYPE_1__*) ;
 int toModifiers (int ) ;
 int translateModifiers (int ,int ) ;
 scalar_t__ uiprivFromScancode (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static int areaKeyEvent(uiArea *a, int up, GdkEventKey *e)
{
 uiAreaKeyEvent ke;
 guint state;
 int i;

 ke.Key = 0;
 ke.ExtKey = 0;
 ke.Modifier = 0;

 state = translateModifiers(e->state, e->window);
 ke.Modifiers = toModifiers(state);

 ke.Up = up;

 for (i = 0; extKeys[i].keyval != GDK_KEY_Print; i++)
  if (extKeys[i].keyval == e->keyval) {
   ke.ExtKey = extKeys[i].extkey;
   goto keyFound;
  }

 for (i = 0; modKeys[i].keyval != GDK_KEY_Print; i++)
  if (modKeys[i].keyval == e->keyval) {
   ke.Modifier = modKeys[i].mod;

   ke.Modifiers &= ~ke.Modifier;
   goto keyFound;
  }

 if (uiprivFromScancode(e->hardware_keycode - 8, &ke))
  goto keyFound;


 return 0;

keyFound:
 return (*(a->ah->KeyEvent))(a->ah, a, &ke);
}
