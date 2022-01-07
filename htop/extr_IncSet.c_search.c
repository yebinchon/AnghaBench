
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; int bar; } ;
typedef int Panel ;
typedef int (* IncMode_GetPanelValue ) (int *,int) ;
typedef TYPE_1__ IncMode ;


 int * CRT_colors ;
 size_t FAILED_SEARCH ;
 int FunctionBar_draw (int ,int ) ;
 int FunctionBar_drawAttr (int ,int ,int ) ;
 int Panel_setSelected (int *,int) ;
 int Panel_size (int *) ;
 scalar_t__ String_contains_i (int ,int ) ;

__attribute__((used)) static bool search(IncMode* mode, Panel* panel, IncMode_GetPanelValue getPanelValue) {
   int size = Panel_size(panel);
   bool found = 0;
   for (int i = 0; i < size; i++) {
      if (String_contains_i(getPanelValue(panel, i), mode->buffer)) {
         Panel_setSelected(panel, i);
         found = 1;
         break;
      }
   }
   if (found)
      FunctionBar_draw(mode->bar, mode->buffer);
   else
      FunctionBar_drawAttr(mode->bar, mode->buffer, CRT_colors[FAILED_SEARCH]);
   return found;
}
