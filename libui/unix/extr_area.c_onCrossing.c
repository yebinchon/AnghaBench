
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cc; TYPE_3__* ah; } ;
typedef TYPE_1__ uiArea ;
typedef int gboolean ;
struct TYPE_7__ {TYPE_1__* a; } ;
typedef TYPE_2__ areaWidget ;
struct TYPE_8__ {int (* MouseCrossed ) (TYPE_3__*,TYPE_1__*,int) ;} ;


 int GDK_EVENT_PROPAGATE ;
 int stub1 (TYPE_3__*,TYPE_1__*,int) ;
 int uiprivClickCounterReset (int ) ;

__attribute__((used)) static gboolean onCrossing(areaWidget *aw, int left)
{
 uiArea *a = aw->a;

 (*(a->ah->MouseCrossed))(a->ah, a, left);
 uiprivClickCounterReset(a->cc);
 return GDK_EVENT_PROPAGATE;
}
