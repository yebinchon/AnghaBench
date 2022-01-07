
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uiCombobox ;
struct TYPE_2__ {int panel; } ;


 size_t curExample ;
 int exampleList ;
 TYPE_1__** examples ;
 int redraw () ;
 size_t uiComboboxSelected (int ) ;
 int uiControlHide (int ) ;
 int uiControlShow (int ) ;

__attribute__((used)) static void onExampleChanged(uiCombobox *c, void *data)
{
 uiControlHide(examples[curExample]->panel);
 curExample = uiComboboxSelected(exampleList);
 uiControlShow(examples[curExample]->panel);
 redraw();
}
