
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct Mode {int bindings; } ;
struct TYPE_7__ {long keycode; int event_state_mask; int keycodes_head; void* command; void* input_type; void* symbol; int exclude_titlebar; int whole_window; int border; int release; } ;
typedef TYPE_1__ Binding ;


 void* B_KEYBOARD ;
 void* B_MOUSE ;
 int B_UPON_KEYPRESS ;
 int B_UPON_KEYRELEASE ;
 int DLOG (char*,TYPE_1__*,char const*,char const*,char const*,char const*) ;
 int ELOG (char*,...) ;
 int FREE (TYPE_1__*) ;
 int I3_XKB_GROUP_MASK_1 ;
 int I3_XKB_GROUP_MASK_2 ;
 int I3_XKB_GROUP_MASK_3 ;
 int I3_XKB_GROUP_MASK_4 ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int ,TYPE_1__*,int ) ;
 int bindings ;
 int event_state_from_str (char const*) ;
 struct Mode* mode_from_name (char const*,int) ;
 int parse_long (char const*,long*,int) ;
 TYPE_1__* scalloc (int,int) ;
 void* sstrdup (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

Binding *configure_binding(const char *bindtype, const char *modifiers, const char *input_code,
                           const char *release, const char *border, const char *whole_window,
                           const char *exclude_titlebar, const char *command, const char *modename,
                           bool pango_markup) {
    Binding *new_binding = scalloc(1, sizeof(Binding));
    DLOG("Binding %p bindtype %s, modifiers %s, input code %s, release %s\n", new_binding, bindtype, modifiers, input_code, release);
    new_binding->release = (release != ((void*)0) ? B_UPON_KEYRELEASE : B_UPON_KEYPRESS);
    new_binding->border = (border != ((void*)0));
    new_binding->whole_window = (whole_window != ((void*)0));
    new_binding->exclude_titlebar = (exclude_titlebar != ((void*)0));
    if (strcmp(bindtype, "bindsym") == 0) {
        new_binding->input_type = (strncasecmp(input_code, "button", (sizeof("button") - 1)) == 0
                                       ? B_MOUSE
                                       : B_KEYBOARD);

        new_binding->symbol = sstrdup(input_code);
    } else {
        long keycode;
        if (!parse_long(input_code, &keycode, 10)) {
            ELOG("Could not parse \"%s\" as an input code, ignoring this binding.\n", input_code);
            FREE(new_binding);
            return ((void*)0);
        }

        new_binding->keycode = keycode;
        new_binding->input_type = B_KEYBOARD;
    }
    new_binding->command = sstrdup(command);
    new_binding->event_state_mask = event_state_from_str(modifiers);
    int group_bits_set = 0;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_1)
        group_bits_set++;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_2)
        group_bits_set++;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_3)
        group_bits_set++;
    if ((new_binding->event_state_mask >> 16) & I3_XKB_GROUP_MASK_4)
        group_bits_set++;
    if (group_bits_set > 1)
        ELOG("Keybinding has more than one Group specified, but your X server is always in precisely one group. The keybinding can never trigger.\n");

    struct Mode *mode = mode_from_name(modename, pango_markup);
    TAILQ_INSERT_TAIL(mode->bindings, new_binding, bindings);

    TAILQ_INIT(&(new_binding->keycodes_head));

    return new_binding;
}
