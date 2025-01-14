
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * columns; } ;
struct TYPE_7__ {int scr; int pl; TYPE_5__* header; int settings; } ;
struct TYPE_6__ {struct TYPE_6__* leftNeighbor; struct TYPE_6__* rightNeighbor; } ;
typedef int Panel ;
typedef TYPE_1__ MetersPanel ;
typedef TYPE_2__ CategoriesPanel ;


 scalar_t__ AvailableMetersPanel_new (int ,TYPE_5__*,int *,int *,int ,int ) ;
 TYPE_1__* MetersPanel_new (int ,char*,int ,int ) ;
 int ScreenManager_add (int ,int *,int) ;

void CategoriesPanel_makeMetersPage(CategoriesPanel* this) {
   MetersPanel* leftMeters = MetersPanel_new(this->settings, "Left column", this->header->columns[0], this->scr);
   MetersPanel* rightMeters = MetersPanel_new(this->settings, "Right column", this->header->columns[1], this->scr);
   leftMeters->rightNeighbor = rightMeters;
   rightMeters->leftNeighbor = leftMeters;
   Panel* availableMeters = (Panel*) AvailableMetersPanel_new(this->settings, this->header, (Panel*) leftMeters, (Panel*) rightMeters, this->scr, this->pl);
   ScreenManager_add(this->scr, (Panel*) leftMeters, 20);
   ScreenManager_add(this->scr, (Panel*) rightMeters, 20);
   ScreenManager_add(this->scr, availableMeters, -1);
}
