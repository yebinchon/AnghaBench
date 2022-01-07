
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int layout; } ;
typedef TYPE_1__ uiDrawTextLayout ;


 int g_object_unref (int ) ;
 int uiprivFree (TYPE_1__*) ;

void uiDrawFreeTextLayout(uiDrawTextLayout *tl)
{
 g_object_unref(tl->layout);
 uiprivFree(tl);
}
