
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Panel ;
typedef int HandlerResult ;
typedef int CheckItem ;


 int BREAK_LOOP ;
 int CheckItem_get (int *) ;
 int CheckItem_set (int *,int) ;
 int HANDLED ;
 int IGNORED ;



 scalar_t__ Panel_getSelected (int *) ;

__attribute__((used)) static HandlerResult AffinityPanel_eventHandler(Panel* this, int ch) {
   CheckItem* selected = (CheckItem*) Panel_getSelected(this);
   switch(ch) {
   case 129:
   case 128:
   case ' ':
      CheckItem_set(selected, ! (CheckItem_get(selected)) );
      return HANDLED;
   case 0x0a:
   case 0x0d:
   case 130:
      return BREAK_LOOP;
   }
   return IGNORED;
}
