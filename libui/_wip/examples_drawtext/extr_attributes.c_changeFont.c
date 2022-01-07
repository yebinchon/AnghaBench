
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiFontButton ;
struct TYPE_3__ {scalar_t__ Family; } ;


 TYPE_1__ defaultFont ;
 int fontButton ;
 scalar_t__ fontFamily ;
 int redraw () ;
 int uiFontButtonFont (int ,TYPE_1__*) ;
 int uiFreeText (scalar_t__) ;

__attribute__((used)) static void changeFont(uiFontButton *b, void *data)
{
 if (defaultFont.Family != fontFamily)
  uiFreeText(defaultFont.Family);

 uiFontButtonFont(fontButton, &defaultFont);
 redraw();
}
