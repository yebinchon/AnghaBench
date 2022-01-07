
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int areaWidgetClass ;
struct TYPE_5__ {int key_release_event; int key_press_event; int leave_notify_event; int enter_notify_event; int motion_notify_event; int button_release_event; int button_press_event; int get_preferred_width; int get_preferred_height; int draw; int size_allocate; } ;
struct TYPE_4__ {int get_property; int set_property; int finalize; int dispose; } ;


 TYPE_3__* GTK_WIDGET_CLASS (int *) ;
 TYPE_1__* G_OBJECT_CLASS (int *) ;
 int G_PARAM_CONSTRUCT_ONLY ;
 int G_PARAM_STATIC_STRINGS ;
 int G_PARAM_WRITABLE ;
 int areaWidget_button_press_event ;
 int areaWidget_button_release_event ;
 int areaWidget_dispose ;
 int areaWidget_draw ;
 int areaWidget_enter_notify_event ;
 int areaWidget_finalize ;
 int areaWidget_get_preferred_height ;
 int areaWidget_get_preferred_width ;
 int areaWidget_get_property ;
 int areaWidget_key_press_event ;
 int areaWidget_key_release_event ;
 int areaWidget_leave_notify_event ;
 int areaWidget_motion_notify_event ;
 int areaWidget_set_property ;
 int areaWidget_size_allocate ;
 int g_object_class_install_property (TYPE_1__*,int ,int ) ;
 int g_param_spec_pointer (char*,char*,char*,int) ;
 int pArea ;
 int pspecArea ;

__attribute__((used)) static void areaWidget_class_init(areaWidgetClass *class)
{
 G_OBJECT_CLASS(class)->dispose = areaWidget_dispose;
 G_OBJECT_CLASS(class)->finalize = areaWidget_finalize;
 G_OBJECT_CLASS(class)->set_property = areaWidget_set_property;
 G_OBJECT_CLASS(class)->get_property = areaWidget_get_property;

 GTK_WIDGET_CLASS(class)->size_allocate = areaWidget_size_allocate;
 GTK_WIDGET_CLASS(class)->draw = areaWidget_draw;
 GTK_WIDGET_CLASS(class)->get_preferred_height = areaWidget_get_preferred_height;
 GTK_WIDGET_CLASS(class)->get_preferred_width = areaWidget_get_preferred_width;
 GTK_WIDGET_CLASS(class)->button_press_event = areaWidget_button_press_event;
 GTK_WIDGET_CLASS(class)->button_release_event = areaWidget_button_release_event;
 GTK_WIDGET_CLASS(class)->motion_notify_event = areaWidget_motion_notify_event;
 GTK_WIDGET_CLASS(class)->enter_notify_event = areaWidget_enter_notify_event;
 GTK_WIDGET_CLASS(class)->leave_notify_event = areaWidget_leave_notify_event;
 GTK_WIDGET_CLASS(class)->key_press_event = areaWidget_key_press_event;
 GTK_WIDGET_CLASS(class)->key_release_event = areaWidget_key_release_event;

 pspecArea = g_param_spec_pointer("libui-area",
  "libui-area",
  "uiArea.",
  G_PARAM_WRITABLE | G_PARAM_CONSTRUCT_ONLY | G_PARAM_STATIC_STRINGS);
 g_object_class_install_property(G_OBJECT_CLASS(class), pArea, pspecArea);
}
