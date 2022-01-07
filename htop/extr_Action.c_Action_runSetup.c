
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int height; } ;
struct TYPE_10__ {scalar_t__ changed; } ;
typedef TYPE_1__ Settings ;
typedef int ScreenManager ;
typedef int ProcessList ;
typedef int Panel ;
typedef TYPE_2__ Header ;
typedef int CategoriesPanel ;


 int CategoriesPanel_makeMetersPage (int *) ;
 int * CategoriesPanel_new (int *,TYPE_1__*,TYPE_2__*,int *) ;
 int HORIZONTAL ;
 int Header_writeBackToSettings (TYPE_2__ const*) ;
 int ScreenManager_add (int *,int *,int) ;
 int ScreenManager_delete (int *) ;
 int * ScreenManager_new (int ,int ,int ,int,int ,TYPE_2__ const*,TYPE_1__*,int) ;
 int ScreenManager_run (int *,int **,int*) ;

__attribute__((used)) static void Action_runSetup(Settings* settings, const Header* header, ProcessList* pl) {
   ScreenManager* scr = ScreenManager_new(0, header->height, 0, -1, HORIZONTAL, header, settings, 1);
   CategoriesPanel* panelCategories = CategoriesPanel_new(scr, settings, (Header*) header, pl);
   ScreenManager_add(scr, (Panel*) panelCategories, 16);
   CategoriesPanel_makeMetersPage(panelCategories);
   Panel* panelFocus;
   int ch;
   ScreenManager_run(scr, &panelFocus, &ch);
   ScreenManager_delete(scr);
   if (settings->changed) {
      Header_writeBackToSettings(header);
   }
}
