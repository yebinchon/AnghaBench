
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ewmh_update_current_desktop () ;
 int ewmh_update_desktop_names () ;
 int ewmh_update_desktop_viewport () ;
 int ewmh_update_number_of_desktops () ;
 int ewmh_update_wm_desktop () ;

void ewmh_update_desktop_properties(void) {
    ewmh_update_number_of_desktops();
    ewmh_update_desktop_viewport();
    ewmh_update_current_desktop();
    ewmh_update_desktop_names();
    ewmh_update_wm_desktop();
}
