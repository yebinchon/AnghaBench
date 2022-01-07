
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* buttons; int container; } ;
typedef TYPE_1__ uiRadioButtons ;
struct TYPE_7__ {scalar_t__ len; } ;
typedef int GtkWidget ;
typedef int GtkRadioButton ;


 int * GTK_RADIO_BUTTON (int ) ;
 int G_CALLBACK (int ) ;
 int g_ptr_array_add (TYPE_4__*,int *) ;
 int g_ptr_array_index (TYPE_4__*,int ) ;
 int g_signal_connect (int *,char*,int ,TYPE_1__*) ;
 int gtk_container_add (int ,int *) ;
 int * gtk_radio_button_new_with_label_from_widget (int *,char const*) ;
 int gtk_widget_show (int *) ;
 int onToggled ;

void uiRadioButtonsAppend(uiRadioButtons *r, const char *text)
{
 GtkWidget *rb;
 GtkRadioButton *previous;

 previous = ((void*)0);
 if (r->buttons->len > 0)
  previous = GTK_RADIO_BUTTON(g_ptr_array_index(r->buttons, 0));
 rb = gtk_radio_button_new_with_label_from_widget(previous, text);
 g_signal_connect(rb, "toggled", G_CALLBACK(onToggled), r);
 gtk_container_add(r->container, rb);
 g_ptr_array_add(r->buttons, rb);
 gtk_widget_show(rb);
}
