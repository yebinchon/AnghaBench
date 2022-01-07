
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char xcb_get_property_reply_t ;
struct TYPE_3__ {char* role; } ;
typedef TYPE_1__ i3Window ;


 int DLOG (char*) ;
 int FREE (char*) ;
 int LOG (char*,char*) ;
 int free (char*) ;
 int sasprintf (char**,char*,scalar_t__,char*) ;
 scalar_t__ xcb_get_property_value (char*) ;
 scalar_t__ xcb_get_property_value_length (char*) ;

void window_update_role(i3Window *win, xcb_get_property_reply_t *prop) {
    if (prop == ((void*)0) || xcb_get_property_value_length(prop) == 0) {
        DLOG("WM_WINDOW_ROLE not set.\n");
        FREE(prop);
        return;
    }

    char *new_role;
    sasprintf(&new_role, "%.*s", xcb_get_property_value_length(prop),
              (char *)xcb_get_property_value(prop));
    FREE(win->role);
    win->role = new_role;
    LOG("WM_WINDOW_ROLE changed to \"%s\"\n", win->role);

    free(prop);
}
