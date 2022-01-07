
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** f; } ;
typedef TYPE_1__ uiDrawFontFamilies ;
typedef int PangoFontFamily ;


 int pango_font_family_get_name (int *) ;
 char* uiUnixStrdupText (int ) ;

char *uiDrawFontFamiliesFamily(uiDrawFontFamilies *ff, int n)
{
 PangoFontFamily *f;

 f = ff->f[n];
 return uiUnixStrdupText(pango_font_family_get_name(f));
}
