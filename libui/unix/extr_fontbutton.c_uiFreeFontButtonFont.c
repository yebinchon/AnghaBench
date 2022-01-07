
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Family; } ;
typedef TYPE_1__ uiFontDescriptor ;


 int uiFreeText (char*) ;

void uiFreeFontButtonFont(uiFontDescriptor *desc)
{

 uiFreeText((char *) (desc->Family));
}
