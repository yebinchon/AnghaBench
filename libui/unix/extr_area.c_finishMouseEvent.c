
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int Down; int Up; int Held1To64; int AreaHeight; int AreaWidth; void* Y; void* X; int Modifiers; } ;
typedef TYPE_1__ uiAreaMouseEvent ;
struct TYPE_10__ {TYPE_3__* ah; } ;
typedef TYPE_2__ uiArea ;
typedef int guint ;
typedef void* gdouble ;
struct TYPE_11__ {int (* MouseEvent ) (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;} ;
typedef int GdkWindow ;


 int GDK_BUTTON1_MASK ;
 int GDK_BUTTON2_MASK ;
 int GDK_BUTTON3_MASK ;
 int loadAreaSize (TYPE_2__*,int *,int *) ;
 int stub1 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;
 int toModifiers (int) ;
 int translateModifiers (int,int *) ;

__attribute__((used)) static void finishMouseEvent(uiArea *a, uiAreaMouseEvent *me, guint mb, gdouble x, gdouble y, guint state, GdkWindow *window)
{

 if (mb >= 4 && mb <= 7)
  return;

 if (me->Down >= 8)
  me->Down -= 4;
 if (me->Up >= 8)
  me->Up -= 4;

 state = translateModifiers(state, window);
 me->Modifiers = toModifiers(state);


 me->Held1To64 = 0;
 if (mb != 1 && (state & GDK_BUTTON1_MASK) != 0)
  me->Held1To64 |= 1 << 0;
 if (mb != 2 && (state & GDK_BUTTON2_MASK) != 0)
  me->Held1To64 |= 1 << 1;
 if (mb != 3 && (state & GDK_BUTTON3_MASK) != 0)
  me->Held1To64 |= 1 << 2;






 me->X = x;
 me->Y = y;

 loadAreaSize(a, &(me->AreaWidth), &(me->AreaHeight));

 (*(a->ah->MouseEvent))(a->ah, a, me);
}
