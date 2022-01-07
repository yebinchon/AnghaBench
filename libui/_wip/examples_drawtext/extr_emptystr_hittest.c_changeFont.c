
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uiFontButton ;
struct TYPE_3__ {scalar_t__ Family; double Size; scalar_t__ Stretch; scalar_t__ Italic; scalar_t__ Weight; } ;


 TYPE_1__ defaultFont ;
 int fontButton ;
 scalar_t__ fontFamily ;
 int printf (char*,scalar_t__,double,int,int,int) ;
 int redraw () ;
 int uiFontButtonFont (int ,TYPE_1__*) ;
 int uiFreeText (scalar_t__) ;

__attribute__((used)) static void changeFont(uiFontButton *b, void *data)
{
 if (defaultFont.Family != fontFamily)
  uiFreeText(defaultFont.Family);

 uiFontButtonFont(fontButton, &defaultFont);
 printf("{\n\tfamily: %s\n\tsize: %g\n\tweight: %d\n\titalic: %d\n\tstretch: %d\n}\n",
  defaultFont.Family,
  defaultFont.Size,
  (int) (defaultFont.Weight),
  (int) (defaultFont.Italic),
  (int) (defaultFont.Stretch));
 redraw();
}
