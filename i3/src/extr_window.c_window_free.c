
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ran_assignments; int name; struct TYPE_4__* class_instance; struct TYPE_4__* class_class; } ;
typedef TYPE_1__ i3Window ;


 int FREE (TYPE_1__*) ;
 int i3string_free (int ) ;

void window_free(i3Window *win) {
    FREE(win->class_class);
    FREE(win->class_instance);
    i3string_free(win->name);
    FREE(win->ran_assignments);
    FREE(win);
}
