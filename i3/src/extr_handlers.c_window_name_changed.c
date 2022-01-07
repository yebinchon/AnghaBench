
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ i3Window ;


 int i3string_as_utf8 (int *) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static bool window_name_changed(i3Window *window, char *old_name) {
    if ((old_name == ((void*)0)) && (window->name == ((void*)0)))
        return 0;


    if ((old_name == ((void*)0)) ^ (window->name == ((void*)0)))
        return 1;

    return (strcmp(old_name, i3string_as_utf8(window->name)) != 0);
}
