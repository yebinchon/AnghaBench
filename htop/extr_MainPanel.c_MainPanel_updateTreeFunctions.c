
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MainPanel ;
typedef int FunctionBar ;


 int FunctionBar_setLabel (int *,int ,char*) ;
 int KEY_F (int) ;
 int * MainPanel_getFunctionBar (int *) ;

void MainPanel_updateTreeFunctions(MainPanel* this, bool mode) {
   FunctionBar* bar = MainPanel_getFunctionBar(this);
   if (mode) {
      FunctionBar_setLabel(bar, KEY_F(5), "Sorted");
      FunctionBar_setLabel(bar, KEY_F(6), "Collap");
   } else {
      FunctionBar_setLabel(bar, KEY_F(5), "Tree  ");
      FunctionBar_setLabel(bar, KEY_F(6), "SortBy");
   }
}
