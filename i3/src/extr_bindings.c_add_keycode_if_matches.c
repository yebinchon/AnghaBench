
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xkb_layout_index_t ;
typedef scalar_t__ xkb_keysym_t ;
typedef int xkb_keycode_t ;
struct xkb_state {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct resolve {scalar_t__ keysym; TYPE_1__* bind; struct xkb_state* xkb_state_no_shift; struct xkb_state* xkb_state_numlock_no_shift; struct xkb_state* xkb_state; struct xkb_state* xkb_state_numlock; } ;
struct TYPE_2__ {int event_state_mask; } ;
typedef TYPE_1__ Binding ;


 int ADD_TRANSLATED_KEY (int ,int) ;
 int DLOG (char*,int ,scalar_t__) ;
 int XCB_MOD_MASK_LOCK ;
 scalar_t__ XKB_KEY_KP_Equal ;
 scalar_t__ XKB_KEY_KP_Space ;
 scalar_t__ const XKB_LAYOUT_INVALID ;
 int xcb_numlock_mask ;
 scalar_t__ xkb_state_key_get_layout (struct xkb_state*,int ) ;
 int xkb_state_key_get_level (struct xkb_state*,int ,scalar_t__ const) ;
 scalar_t__ xkb_state_key_get_one_sym (struct xkb_state*,int ) ;

__attribute__((used)) static void add_keycode_if_matches(struct xkb_keymap *keymap, xkb_keycode_t key, void *data) {
    const struct resolve *resolving = data;
    struct xkb_state *numlock_state = resolving->xkb_state_numlock;
    xkb_keysym_t sym = xkb_state_key_get_one_sym(resolving->xkb_state, key);
    if (sym != resolving->keysym) {


        const xkb_layout_index_t layout = xkb_state_key_get_layout(resolving->xkb_state, key);
        if (layout == XKB_LAYOUT_INVALID)
            return;
        if (xkb_state_key_get_level(resolving->xkb_state, key, layout) > 1)
            return;


        if (sym >= XKB_KEY_KP_Space && sym <= XKB_KEY_KP_Equal)
            return;
        numlock_state = resolving->xkb_state_numlock_no_shift;
        sym = xkb_state_key_get_one_sym(resolving->xkb_state_no_shift, key);
        if (sym != resolving->keysym)
            return;
    }
    Binding *bind = resolving->bind;

    ADD_TRANSLATED_KEY(key, bind->event_state_mask);


    ADD_TRANSLATED_KEY(key, bind->event_state_mask | XCB_MOD_MASK_LOCK);



    if ((bind->event_state_mask & xcb_numlock_mask) != xcb_numlock_mask) {




        xkb_keysym_t sym_numlock = xkb_state_key_get_one_sym(numlock_state, key);
        if (sym_numlock == resolving->keysym) {

            ADD_TRANSLATED_KEY(key, bind->event_state_mask | xcb_numlock_mask);


            ADD_TRANSLATED_KEY(key, bind->event_state_mask | xcb_numlock_mask | XCB_MOD_MASK_LOCK);
        } else {
            DLOG("Skipping automatic numlock fallback, key %d resolves to 0x%x with numlock\n",
                 key, sym_numlock);
        }
    }
}
