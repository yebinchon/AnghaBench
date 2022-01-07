
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* changing; int buttons; } ;
typedef TYPE_1__ uiRadioButtons ;
typedef void* gboolean ;
typedef int GtkToggleButton ;


 void* FALSE ;
 int * GTK_TOGGLE_BUTTON (int ) ;
 void* TRUE ;
 int g_ptr_array_index (int ,int) ;
 int gtk_toggle_button_set_active (int *,void*) ;
 int uiRadioButtonsSelected (TYPE_1__*) ;

void uiRadioButtonsSetSelected(uiRadioButtons *r, int n)
{
 GtkToggleButton *tb;
 gboolean active;

 active = TRUE;

 if (n == -1) {
  n = uiRadioButtonsSelected(r);
  if (n == -1)
   return;
  active = FALSE;
 }
 tb = GTK_TOGGLE_BUTTON(g_ptr_array_index(r->buttons, n));

 r->changing = TRUE;
 gtk_toggle_button_set_active(tb, active);
 r->changing = FALSE;
}
