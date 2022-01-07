
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int y2; int x2; int x1; TYPE_2__* header; } ;
struct TYPE_10__ {TYPE_4__* scr; TYPE_1__* settings; } ;
struct TYPE_9__ {int height; } ;
struct TYPE_8__ {int changed; } ;
typedef int Panel ;
typedef TYPE_2__ Header ;
typedef scalar_t__ HandlerResult ;
typedef TYPE_3__ DisplayOptionsPanel ;
typedef int CheckItem ;


 int CheckItem_get (int *) ;
 int CheckItem_set (int *,int) ;
 scalar_t__ HANDLED ;
 int Header_calculateHeight (TYPE_2__*) ;
 int Header_draw (TYPE_2__ const*) ;
 int Header_reinit (TYPE_2__*) ;
 scalar_t__ IGNORED ;



 scalar_t__ Panel_getSelected (int *) ;
 int ScreenManager_resize (TYPE_4__*,int ,int ,int ,int ) ;

__attribute__((used)) static HandlerResult DisplayOptionsPanel_eventHandler(Panel* super, int ch) {
   DisplayOptionsPanel* this = (DisplayOptionsPanel*) super;

   HandlerResult result = IGNORED;
   CheckItem* selected = (CheckItem*) Panel_getSelected(super);

   switch(ch) {
   case 0x0a:
   case 0x0d:
   case 130:
   case 129:
   case 128:
   case ' ':
      CheckItem_set(selected, ! (CheckItem_get(selected)) );
      result = HANDLED;
   }

   if (result == HANDLED) {
      this->settings->changed = 1;
      const Header* header = this->scr->header;
      Header_calculateHeight((Header*) header);
      Header_reinit((Header*) header);
      Header_draw(header);
      ScreenManager_resize(this->scr, this->scr->x1, header->height, this->scr->x2, this->scr->y2);
   }
   return result;
}
