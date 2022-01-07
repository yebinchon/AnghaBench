
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {void* hasDate; void* hasTime; int * mouse; int * keyboard; void* toggledSignal; struct TYPE_20__* window; struct TYPE_20__* box; struct TYPE_20__* ampm; struct TYPE_20__* timebox; int ampmBlock; struct TYPE_20__* seconds; int secondsBlock; struct TYPE_20__* minutes; int minutesBlock; struct TYPE_20__* hours; int hoursBlock; struct TYPE_20__* calendar; void* calendarBlock; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;


 int FALSE ;
 int GDK_WINDOW_TYPE_HINT_COMBO ;
 int GTK_ALIGN_CENTER ;
 int GTK_COMBO_BOX_TEXT (TYPE_1__*) ;
 int GTK_CONTAINER (TYPE_1__*) ;
 int GTK_ORIENTATION_HORIZONTAL ;
 int GTK_ORIENTATION_VERTICAL ;
 int GTK_SPIN_BUTTON (TYPE_1__*) ;
 int GTK_WIDGET (TYPE_1__*) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int GTK_WINDOW_POPUP ;
 int G_CALLBACK (int ) ;
 void* TRUE ;
 int * ampmSpinboxInput ;
 int ampmSpinboxOutput ;
 int buttonReleased ;
 int dateChanged ;
 int g_date_time_new_now_local () ;
 void* g_signal_connect (TYPE_1__*,char*,int ,TYPE_1__*) ;
 int grabBroken ;
 void* gtk_box_new (int ,int) ;
 TYPE_1__* gtk_calendar_new () ;
 int gtk_combo_box_text_append (int ,int *,char*) ;
 TYPE_1__* gtk_combo_box_text_new () ;
 int gtk_container_add (int ,TYPE_1__*) ;
 int gtk_container_set_border_width (int ,int) ;
 TYPE_1__* gtk_label_new (char*) ;
 int gtk_spin_button_set_numeric (int ,int ) ;
 int gtk_style_context_add_class (int ,char*) ;
 int gtk_widget_get_style_context (TYPE_1__*) ;
 int gtk_widget_set_valign (TYPE_1__*,int ) ;
 int gtk_widget_show_all (TYPE_1__*) ;
 TYPE_1__* gtk_window_new (int ) ;
 int gtk_window_set_attached_to (int ,int ) ;
 int gtk_window_set_decorated (int ,int ) ;
 int gtk_window_set_deletable (int ,int ) ;
 int gtk_window_set_has_resize_grip (int ,int ) ;
 int gtk_window_set_resizable (int ,int ) ;
 int gtk_window_set_skip_pager_hint (int ,void*) ;
 int gtk_window_set_skip_taskbar_hint (int ,void*) ;
 int gtk_window_set_type_hint (int ,int ) ;
 int * hoursSpinboxInput ;
 int hoursSpinboxOutput ;
 void* newSpinbox (TYPE_1__*,int ,int,int *,int ,int *) ;
 int onToggled ;
 int uiprivDateTimePickerWidget_setTime (TYPE_1__*,int ) ;
 int zeroPadSpinbox ;

__attribute__((used)) static void uiprivDateTimePickerWidget_init(uiprivDateTimePickerWidget *d)
{
 d->window = gtk_window_new(GTK_WINDOW_POPUP);
 gtk_window_set_resizable(GTK_WINDOW(d->window), FALSE);
 gtk_window_set_attached_to(GTK_WINDOW(d->window), GTK_WIDGET(d));
 gtk_window_set_decorated(GTK_WINDOW(d->window), FALSE);
 gtk_window_set_deletable(GTK_WINDOW(d->window), FALSE);
 gtk_window_set_type_hint(GTK_WINDOW(d->window), GDK_WINDOW_TYPE_HINT_COMBO);
 gtk_window_set_skip_taskbar_hint(GTK_WINDOW(d->window), TRUE);
 gtk_window_set_skip_pager_hint(GTK_WINDOW(d->window), TRUE);
 gtk_window_set_has_resize_grip(GTK_WINDOW(d->window), FALSE);
 gtk_container_set_border_width(GTK_CONTAINER(d->window), 12);

 gtk_style_context_add_class(gtk_widget_get_style_context(d->window), "frame");

 d->box = gtk_box_new(GTK_ORIENTATION_VERTICAL, 6);
 gtk_container_add(GTK_CONTAINER(d->window), d->box);

 d->calendar = gtk_calendar_new();
 d->calendarBlock = g_signal_connect(d->calendar, "day-selected", G_CALLBACK(dateChanged), d);
 gtk_container_add(GTK_CONTAINER(d->box), d->calendar);

 d->timebox = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 6);
 gtk_widget_set_valign(d->timebox, GTK_ALIGN_CENTER);
 gtk_container_add(GTK_CONTAINER(d->box), d->timebox);

 d->hours = newSpinbox(d, 0, 11, hoursSpinboxInput, hoursSpinboxOutput, &(d->hoursBlock));
 gtk_container_add(GTK_CONTAINER(d->timebox), d->hours);

 gtk_container_add(GTK_CONTAINER(d->timebox),
  gtk_label_new(":"));

 d->minutes = newSpinbox(d, 0, 59, ((void*)0), zeroPadSpinbox, &(d->minutesBlock));
 gtk_container_add(GTK_CONTAINER(d->timebox), d->minutes);

 gtk_container_add(GTK_CONTAINER(d->timebox),
  gtk_label_new(":"));

 d->seconds = newSpinbox(d, 0, 59, ((void*)0), zeroPadSpinbox, &(d->secondsBlock));
 gtk_container_add(GTK_CONTAINER(d->timebox), d->seconds);
 d->ampm = newSpinbox(d, 0, 1, ampmSpinboxInput, ampmSpinboxOutput, &(d->ampmBlock));
 gtk_spin_button_set_numeric(GTK_SPIN_BUTTON(d->ampm), FALSE);
 gtk_widget_set_valign(d->ampm, GTK_ALIGN_CENTER);
 gtk_container_add(GTK_CONTAINER(d->timebox), d->ampm);

 gtk_widget_show_all(d->box);

 g_signal_connect(d->window, "grab-broken-event", G_CALLBACK(grabBroken), d);
 g_signal_connect(d->window, "button-release-event", G_CALLBACK(buttonReleased), d);

 d->toggledSignal = g_signal_connect(d, "toggled", G_CALLBACK(onToggled), ((void*)0));
 d->keyboard = ((void*)0);
 d->mouse = ((void*)0);

 d->hasTime = TRUE;
 d->hasDate = TRUE;


 uiprivDateTimePickerWidget_setTime(d, g_date_time_new_now_local());
}
