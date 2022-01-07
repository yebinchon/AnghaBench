
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xcb_get_property_reply_t ;
struct TYPE_3__ {int * class_class; int * class_instance; } ;
typedef TYPE_1__ i3Window ;


 int DLOG (char*) ;
 int FREE (int *) ;
 int LOG (char*,int *,int *) ;
 int free (int *) ;
 void* sstrndup (char*,size_t const) ;
 int strnlen (char*,size_t const) ;
 char* xcb_get_property_value (int *) ;
 size_t xcb_get_property_value_length (int *) ;

void window_update_class(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        DLOG("WM_CLASS not set.\n");
        FREE(prop);
        return;
    }




    const size_t prop_length = xcb_get_property_value_length(prop);
    char *new_class = xcb_get_property_value(prop);
    const size_t class_class_index = strnlen(new_class, prop_length) + 1;

    FREE(win->class_instance);
    FREE(win->class_class);

    win->class_instance = sstrndup(new_class, prop_length);
    if (class_class_index < prop_length)
        win->class_class = sstrndup(new_class + class_class_index, prop_length - class_class_index);
    else
        win->class_class = ((void*)0);
    LOG("WM_CLASS changed to %s (instance), %s (class)\n",
        win->class_instance, win->class_class);

    free(prop);
}
