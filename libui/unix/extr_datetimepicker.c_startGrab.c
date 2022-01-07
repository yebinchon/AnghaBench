
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * mouse; int * keyboard; int window; } ;
typedef TYPE_1__ uiprivDateTimePickerWidget ;
typedef int guint32 ;
typedef int gboolean ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef int GdkWindow ;
typedef int GdkDisplay ;
typedef int GdkDeviceManager ;
typedef int GdkDevice ;
typedef TYPE_2__ GList ;


 int FALSE ;
 int GDK_BUTTON_PRESS_MASK ;
 int GDK_BUTTON_RELEASE_MASK ;
 int GDK_DEVICE_TYPE_MASTER ;
 scalar_t__ GDK_GRAB_SUCCESS ;
 int GDK_KEY_PRESS_MASK ;
 int GDK_KEY_RELEASE_MASK ;
 int GDK_OWNERSHIP_WINDOW ;
 int GDK_POINTER_MOTION_MASK ;
 scalar_t__ GDK_SOURCE_KEYBOARD ;
 int GTK_WIDGET (TYPE_1__*) ;
 int TRUE ;
 int g_list_free (TYPE_2__*) ;
 int * gdk_device_get_associated_device (int *) ;
 scalar_t__ gdk_device_get_source (int *) ;
 scalar_t__ gdk_device_grab (int *,int *,int ,int ,int,int *,int ) ;
 TYPE_2__* gdk_device_manager_list_devices (int *,int ) ;
 int gdk_device_ungrab (int *,int ) ;
 int * gdk_display_get_device_manager (int *) ;
 int gtk_device_grab_add (int ,int *,int ) ;
 int * gtk_get_current_event_device () ;
 int gtk_get_current_event_time () ;
 int * gtk_widget_get_display (int ) ;
 int * gtk_widget_get_window (int ) ;

__attribute__((used)) static gboolean startGrab(uiprivDateTimePickerWidget *d)
{
 GdkDevice *dev;
 guint32 time;
 GdkWindow *window;
 GdkDevice *keyboard, *mouse;

 dev = gtk_get_current_event_device();
 if (dev == ((void*)0)) {


  GdkDisplay *disp;
  GdkDeviceManager *dm;
  GList *list;

  disp = gtk_widget_get_display(GTK_WIDGET(d));
  dm = gdk_display_get_device_manager(disp);
  list = gdk_device_manager_list_devices(dm, GDK_DEVICE_TYPE_MASTER);
  dev = (GdkDevice *) (list->data);
  g_list_free(list);
 }

 time = gtk_get_current_event_time();
 keyboard = dev;
 mouse = gdk_device_get_associated_device(dev);
 if (gdk_device_get_source(dev) != GDK_SOURCE_KEYBOARD) {
  dev = mouse;
  mouse = keyboard;
  keyboard = dev;
 }

 window = gtk_widget_get_window(d->window);
 if (keyboard != ((void*)0))
  if (gdk_device_grab(keyboard, window,
   GDK_OWNERSHIP_WINDOW, TRUE,
   GDK_KEY_PRESS_MASK | GDK_KEY_RELEASE_MASK,
   ((void*)0), time) != GDK_GRAB_SUCCESS)
   return FALSE;
 if (mouse != ((void*)0))
  if (gdk_device_grab(mouse, window,
   GDK_OWNERSHIP_WINDOW, TRUE,
   GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK | GDK_POINTER_MOTION_MASK,
   ((void*)0), time) != GDK_GRAB_SUCCESS) {
   if (keyboard != ((void*)0))
    gdk_device_ungrab(keyboard, time);
   return FALSE;
  }

 gtk_device_grab_add(d->window, mouse, TRUE);
 d->keyboard = keyboard;
 d->mouse = mouse;
 return TRUE;
}
