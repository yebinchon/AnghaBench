
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int uiName; } ;
struct TYPE_9__ {int moving; } ;
struct TYPE_8__ {int mode; int param; } ;
typedef TYPE_1__ Meter ;
typedef TYPE_2__ ListItem ;


 TYPE_2__* ListItem_new (char*,int ) ;
 TYPE_6__** Meter_modes ;
 int Meter_uiName (TYPE_1__*) ;
 int xSnprintf (char*,int,char*,int ,...) ;

ListItem* Meter_toListItem(Meter* this, bool moving) {
   char mode[21];
   if (this->mode)
      xSnprintf(mode, 20, " [%s]", Meter_modes[this->mode]->uiName);
   else
      mode[0] = '\0';
   char number[11];
   if (this->param > 0)
      xSnprintf(number, 10, " %d", this->param);
   else
      number[0] = '\0';
   char buffer[51];
   xSnprintf(buffer, 50, "%s%s%s", Meter_uiName(this), number, mode);
   ListItem* li = ListItem_new(buffer, 0);
   li->moving = moving;
   return li;
}
