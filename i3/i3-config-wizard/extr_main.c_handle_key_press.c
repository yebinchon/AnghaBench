
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xcb_keysym_t ;
typedef scalar_t__ xcb_keycode_t ;
struct TYPE_6__ {int detail; int state; } ;
typedef TYPE_1__ xcb_key_press_event_t ;
typedef int xcb_connection_t ;
typedef int uint16_t ;
struct TYPE_7__ {int keycodes_per_modifier; } ;


 int A_UTF8_STRING ;
 int A__NET_WM_NAME ;
 scalar_t__ MOD_Mod1 ;
 scalar_t__ MOD_Mod4 ;
 scalar_t__ STEP_GENERATE ;
 scalar_t__ STEP_WELCOME ;
 int XCB_MOD_MASK_LOCK ;
 scalar_t__ XCB_NONE ;
 int XCB_PROP_MODE_REPLACE ;
 int XK_Down ;
 int XK_Escape ;
 int XK_KP_Enter ;
 int XK_Return ;
 int XK_Up ;
 scalar_t__ current_step ;
 int exit (int ) ;
 int finish () ;
 int handle_expose () ;
 scalar_t__ modifier ;
 TYPE_3__* modmap_reply ;
 int printf (char*,...) ;
 int strlen (char*) ;
 int symbols ;
 int win ;
 int xcb_change_property (int *,int ,int ,int ,int ,int,int ,char*) ;
 int xcb_flush (int *) ;
 scalar_t__* xcb_get_modifier_mapping_keycodes (TYPE_3__*) ;
 int xcb_key_press_lookup_keysym (int ,TYPE_1__*,int) ;
 int xcb_numlock_mask ;

__attribute__((used)) static int handle_key_press(void *ignored, xcb_connection_t *conn, xcb_key_press_event_t *event) {
    printf("Keypress %d, state raw = %d\n", event->detail, event->state);


    uint16_t state_filtered = event->state & ~(xcb_numlock_mask | XCB_MOD_MASK_LOCK);


    state_filtered &= 0xFF;

    xcb_keysym_t sym = xcb_key_press_lookup_keysym(symbols, event, state_filtered);

    printf("sym = %c (%d)\n", sym, sym);

    if (sym == XK_Return || sym == XK_KP_Enter) {
        if (current_step == STEP_WELCOME) {
            current_step = STEP_GENERATE;

            xcb_change_property(conn,
                                XCB_PROP_MODE_REPLACE,
                                win,
                                A__NET_WM_NAME,
                                A_UTF8_STRING,
                                8,
                                strlen("i3: generate config"),
                                "i3: generate config");
            xcb_flush(conn);
        } else
            finish();
    }


    if (sym == XK_Up || sym == XK_Down) {
        modifier = (modifier == MOD_Mod1) ? MOD_Mod4 : MOD_Mod1;
        handle_expose();
    }


    if (sym == XK_Escape)
        exit(0);



    xcb_keycode_t *modmap = xcb_get_modifier_mapping_keycodes(modmap_reply);

    int mask = 3;
    for (int i = 0; i < modmap_reply->keycodes_per_modifier; i++) {
        xcb_keycode_t code = modmap[(mask * modmap_reply->keycodes_per_modifier) + i];
        if (code == XCB_NONE)
            continue;
        printf("Modifier keycode for Mod1: 0x%02x\n", code);
        if (code == event->detail) {
            modifier = MOD_Mod1;
            printf("This is Mod1!\n");
        }
    }


    mask = 6;
    for (int i = 0; i < modmap_reply->keycodes_per_modifier; i++) {
        xcb_keycode_t code = modmap[(mask * modmap_reply->keycodes_per_modifier) + i];
        if (code == XCB_NONE)
            continue;
        printf("Modifier keycode for Mod4: 0x%02x\n", code);
        if (code == event->detail) {
            modifier = MOD_Mod4;
            printf("This is Mod4!\n");
        }
    }

    handle_expose();
    return 1;
}
