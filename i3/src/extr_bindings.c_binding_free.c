
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Binding_Keycode {struct Binding_Keycode* command; struct Binding_Keycode* symbol; int keycodes_head; } ;
typedef struct Binding_Keycode Binding ;


 int FREE (struct Binding_Keycode*) ;
 int TAILQ_EMPTY (int *) ;
 struct Binding_Keycode* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct Binding_Keycode*,int ) ;
 int keycodes ;

void binding_free(Binding *bind) {
    if (bind == ((void*)0)) {
        return;
    }

    while (!TAILQ_EMPTY(&(bind->keycodes_head))) {
        struct Binding_Keycode *first = TAILQ_FIRST(&(bind->keycodes_head));
        TAILQ_REMOVE(&(bind->keycodes_head), first, keycodes);
        FREE(first);
    }

    FREE(bind->symbol);
    FREE(bind->command);
    FREE(bind);
}
