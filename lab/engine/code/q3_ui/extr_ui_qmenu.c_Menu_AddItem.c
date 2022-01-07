
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int menutext_s ;
typedef int menuslider_s ;
typedef int menuradiobutton_s ;
typedef int menulist_s ;
struct TYPE_4__ {size_t nitems; void** items; } ;
typedef TYPE_1__ menuframework_s ;
typedef int menufield_s ;
struct TYPE_5__ {size_t menuPosition; int flags; int type; TYPE_1__* parent; } ;
typedef TYPE_2__ menucommon_s ;
typedef int menubitmap_s ;
typedef int menuaction_s ;


 int Action_Init (int *) ;
 int BText_Init (int *) ;
 int Bitmap_Init (int *) ;
 size_t MAX_MENUITEMS ;
 int MenuField_Init (int *) ;
 int PText_Init (int *) ;
 int QMF_HASMOUSEFOCUS ;
 int QMF_NODEFAULTINIT ;
 int RadioButton_Init (int *) ;
 int ScrollList_Init (int *) ;
 int Slider_Init (int *) ;
 int SpinControl_Init (int *) ;
 int Text_Init (int *) ;
 int trap_Error (char*) ;
 char* va (char*,int) ;

void Menu_AddItem( menuframework_s *menu, void *item )
{
 menucommon_s *itemptr;

 if (menu->nitems >= MAX_MENUITEMS)
  trap_Error ("Menu_AddItem: excessive items");

 menu->items[menu->nitems] = item;
 ((menucommon_s*)menu->items[menu->nitems])->parent = menu;
 ((menucommon_s*)menu->items[menu->nitems])->menuPosition = menu->nitems;
 ((menucommon_s*)menu->items[menu->nitems])->flags &= ~QMF_HASMOUSEFOCUS;


 itemptr = (menucommon_s*)item;
 if (!(itemptr->flags & QMF_NODEFAULTINIT))
 {
  switch (itemptr->type)
  {
   case 137:
    Action_Init((menuaction_s*)item);
    break;

   case 134:
    MenuField_Init((menufield_s*)item);
    break;

   case 129:
    SpinControl_Init((menulist_s*)item);
    break;

   case 132:
    RadioButton_Init((menuradiobutton_s*)item);
    break;

   case 130:
    Slider_Init((menuslider_s*)item);
    break;

   case 136:
    Bitmap_Init((menubitmap_s*)item);
    break;

   case 128:
    Text_Init((menutext_s*)item);
    break;

   case 131:
    ScrollList_Init((menulist_s*)item);
    break;

   case 133:
    PText_Init((menutext_s*)item);
    break;

   case 135:
    BText_Init((menutext_s*)item);
    break;

   default:
    trap_Error( va("Menu_Init: unknown type %d", itemptr->type) );
  }
 }

 menu->nitems++;
}
