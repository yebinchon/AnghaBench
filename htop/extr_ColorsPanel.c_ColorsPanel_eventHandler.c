
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int y2; int x2; int x1; int panels; TYPE_3__* header; } ;
struct TYPE_13__ {TYPE_5__* scr; TYPE_1__* settings; } ;
struct TYPE_12__ {int height; } ;
struct TYPE_11__ {int header; } ;
struct TYPE_10__ {int colorScheme; int changed; } ;
typedef TYPE_2__ Panel ;
typedef TYPE_3__ Header ;
typedef scalar_t__ HandlerResult ;
typedef TYPE_4__ ColorsPanel ;
typedef int CheckItem ;


 int * CRT_colors ;
 int CRT_setColors (int) ;
 int CheckItem_set (int *,int) ;
 int ** ColorSchemeNames ;
 scalar_t__ HANDLED ;
 int Header_draw (TYPE_3__ const*) ;
 scalar_t__ IGNORED ;



 size_t PANEL_HEADER_FOCUS ;
 size_t PANEL_HEADER_UNFOCUS ;
 scalar_t__ Panel_get (TYPE_2__*,int) ;
 int Panel_getSelectedIndex (TYPE_2__*) ;
 int RichString_setAttr (int *,int ) ;
 int ScreenManager_resize (TYPE_5__*,int ,int ,int ,int ) ;
 scalar_t__ Vector_get (int ,int ) ;
 int clear () ;

__attribute__((used)) static HandlerResult ColorsPanel_eventHandler(Panel* super, int ch) {
   ColorsPanel* this = (ColorsPanel*) super;

   HandlerResult result = IGNORED;
   int mark = Panel_getSelectedIndex(super);

   switch(ch) {
   case 0x0a:
   case 0x0d:
   case 130:
   case 129:
   case 128:
   case ' ':
      for (int i = 0; ColorSchemeNames[i] != ((void*)0); i++)
         CheckItem_set((CheckItem*)Panel_get(super, i), 0);
      CheckItem_set((CheckItem*)Panel_get(super, mark), 1);
      this->settings->colorScheme = mark;
      result = HANDLED;
   }

   if (result == HANDLED) {
      this->settings->changed = 1;
      const Header* header = this->scr->header;
      CRT_setColors(mark);
      clear();
      Panel* menu = (Panel*) Vector_get(this->scr->panels, 0);
      Header_draw(header);
      RichString_setAttr(&(super->header), CRT_colors[PANEL_HEADER_FOCUS]);
      RichString_setAttr(&(menu->header), CRT_colors[PANEL_HEADER_UNFOCUS]);
      ScreenManager_resize(this->scr, this->scr->x1, header->height, this->scr->x2, this->scr->y2);
   }
   return result;
}
