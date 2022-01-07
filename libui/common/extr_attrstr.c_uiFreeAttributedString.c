
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* s; struct TYPE_5__* u16; struct TYPE_5__* u8tou16; struct TYPE_5__* u16tou8; int attrs; } ;
typedef TYPE_1__ uiAttributedString ;


 int invalidateGraphemes (TYPE_1__*) ;
 int uiprivFree (TYPE_1__*) ;
 int uiprivFreeAttrList (int ) ;

void uiFreeAttributedString(uiAttributedString *s)
{
 uiprivFreeAttrList(s->attrs);
 invalidateGraphemes(s);
 uiprivFree(s->u16tou8);
 uiprivFree(s->u8tou16);
 uiprivFree(s->u16);
 uiprivFree(s->s);
 uiprivFree(s);
}
