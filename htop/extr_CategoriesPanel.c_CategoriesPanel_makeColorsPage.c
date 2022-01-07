
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scr; int settings; } ;
typedef int Panel ;
typedef TYPE_1__ CategoriesPanel ;


 scalar_t__ ColorsPanel_new (int ,int ) ;
 int ScreenManager_add (int ,int *,int) ;

__attribute__((used)) static void CategoriesPanel_makeColorsPage(CategoriesPanel* this) {
   Panel* colors = (Panel*) ColorsPanel_new(this->settings, this->scr);
   ScreenManager_add(this->scr, colors, -1);
}
