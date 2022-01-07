
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; } ;
typedef TYPE_1__ uiDrawTextFont ;


 int g_object_unref (int ) ;
 int uiFree (TYPE_1__*) ;

void uiDrawFreeTextFont(uiDrawTextFont *font)
{
 g_object_unref(font->f);
 uiFree(font);
}
