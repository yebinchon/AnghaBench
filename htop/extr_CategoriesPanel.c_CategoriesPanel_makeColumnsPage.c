
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scr; int settings; } ;
typedef int Panel ;
typedef TYPE_1__ CategoriesPanel ;


 scalar_t__ AvailableColumnsPanel_new (int *) ;
 scalar_t__ ColumnsPanel_new (int ) ;
 int ScreenManager_add (int ,int *,int) ;

__attribute__((used)) static void CategoriesPanel_makeColumnsPage(CategoriesPanel* this) {
   Panel* columns = (Panel*) ColumnsPanel_new(this->settings);
   Panel* availableColumns = (Panel*) AvailableColumnsPanel_new(columns);
   ScreenManager_add(this->scr, columns, 20);
   ScreenManager_add(this->scr, availableColumns, -1);
}
