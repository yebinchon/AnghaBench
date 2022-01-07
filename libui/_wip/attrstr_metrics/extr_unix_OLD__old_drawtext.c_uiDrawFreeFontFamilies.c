
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; } ;
typedef TYPE_1__ uiDrawFontFamilies ;


 int g_free (int ) ;
 int uiFree (TYPE_1__*) ;

void uiDrawFreeFontFamilies(uiDrawFontFamilies *ff)
{
 g_free(ff->f);
 uiFree(ff);
}
