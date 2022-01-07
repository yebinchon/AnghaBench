
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int menutext_s ;
typedef int menuslider_s ;
typedef int menuradiobutton_s ;
typedef int menulist_s ;
struct TYPE_8__ {int nitems; scalar_t__* items; } ;
typedef TYPE_1__ menuframework_s ;
typedef int menufield_s ;
struct TYPE_9__ {int flags; int type; int left; int top; int right; int bottom; int (* statusbar ) (void*) ;int (* ownerdraw ) (TYPE_2__*) ;} ;
typedef TYPE_2__ menucommon_s ;
typedef int menubitmap_s ;
typedef int menuaction_s ;
struct TYPE_10__ {scalar_t__ debug; } ;


 int Action_Draw (int *) ;
 int BText_Draw (int *) ;
 int Bitmap_Draw (int *) ;
 int MenuField_Draw (int *) ;
 TYPE_2__* Menu_ItemAtCursor (TYPE_1__*) ;
 int PText_Draw (int *) ;
 int QMF_HASMOUSEFOCUS ;
 int QMF_HIDDEN ;
 int QMF_INACTIVE ;
 int RadioButton_Draw (int *) ;
 int ScrollList_Draw (int *) ;
 int Slider_Draw (int *) ;
 int SpinControl_Draw (int *) ;
 int Text_Draw (int *) ;
 int UI_DrawRect (int,int,int,int,int ) ;
 int colorWhite ;
 int colorYellow ;
 int stub1 (TYPE_2__*) ;
 int stub2 (void*) ;
 int trap_Error (int ) ;
 TYPE_3__ uis ;
 int va (char*,int) ;

void Menu_Draw( menuframework_s *menu )
{
 int i;
 menucommon_s *itemptr;


 for (i=0; i<menu->nitems; i++)
 {
  itemptr = (menucommon_s*)menu->items[i];

  if (itemptr->flags & QMF_HIDDEN)
   continue;

  if (itemptr->ownerdraw)
  {

   itemptr->ownerdraw( itemptr );
  }
  else
  {
   switch (itemptr->type)
   {
    case 132:
     RadioButton_Draw( (menuradiobutton_s*)itemptr );
     break;

    case 134:
     MenuField_Draw( (menufield_s*)itemptr );
     break;

    case 130:
     Slider_Draw( (menuslider_s*)itemptr );
     break;

    case 129:
     SpinControl_Draw( (menulist_s*)itemptr );
     break;

    case 137:
     Action_Draw( (menuaction_s*)itemptr );
     break;

    case 136:
     Bitmap_Draw( (menubitmap_s*)itemptr );
     break;

    case 128:
     Text_Draw( (menutext_s*)itemptr );
     break;

    case 131:
     ScrollList_Draw( (menulist_s*)itemptr );
     break;

    case 133:
     PText_Draw( (menutext_s*)itemptr );
     break;

    case 135:
     BText_Draw( (menutext_s*)itemptr );
     break;

    default:
     trap_Error( va("Menu_Draw: unknown type %d", itemptr->type) );
   }
  }

  if( uis.debug ) {
   int x;
   int y;
   int w;
   int h;

   if( !( itemptr->flags & QMF_INACTIVE ) ) {
    x = itemptr->left;
    y = itemptr->top;
    w = itemptr->right - itemptr->left + 1;
    h = itemptr->bottom - itemptr->top + 1;

    if (itemptr->flags & QMF_HASMOUSEFOCUS) {
     UI_DrawRect(x, y, w, h, colorYellow );
    }
    else {
     UI_DrawRect(x, y, w, h, colorWhite );
    }
   }
  }

 }

 itemptr = Menu_ItemAtCursor( menu );
 if ( itemptr && itemptr->statusbar)
  itemptr->statusbar( ( void * ) itemptr );
}
