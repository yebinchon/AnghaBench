#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xkb_layout_index_t ;
typedef  scalar_t__ xkb_keysym_t ;
typedef  int /*<<< orphan*/  xkb_keycode_t ;
struct xkb_state {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct resolve {scalar_t__ keysym; TYPE_1__* bind; struct xkb_state* xkb_state_no_shift; struct xkb_state* xkb_state_numlock_no_shift; struct xkb_state* xkb_state; struct xkb_state* xkb_state_numlock; } ;
struct TYPE_2__ {int event_state_mask; } ;
typedef  TYPE_1__ Binding ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int XCB_MOD_MASK_LOCK ; 
 scalar_t__ XKB_KEY_KP_Equal ; 
 scalar_t__ XKB_KEY_KP_Space ; 
 scalar_t__ const XKB_LAYOUT_INVALID ; 
 int xcb_numlock_mask ; 
 scalar_t__ FUNC2 (struct xkb_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xkb_state*,int /*<<< orphan*/ ,scalar_t__ const) ; 
 scalar_t__ FUNC4 (struct xkb_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct xkb_keymap *keymap, xkb_keycode_t key, void *data) {
    const struct resolve *resolving = data;
    struct xkb_state *numlock_state = resolving->xkb_state_numlock;
    xkb_keysym_t sym = FUNC4(resolving->xkb_state, key);
    if (sym != resolving->keysym) {
        /* Check if Shift was specified, and try resolving the symbol without
         * shift, so that “bindsym $mod+Shift+a nop” actually works. */
        const xkb_layout_index_t layout = FUNC2(resolving->xkb_state, key);
        if (layout == XKB_LAYOUT_INVALID)
            return;
        if (FUNC3(resolving->xkb_state, key, layout) > 1)
            return;
        /* Skip the Shift fallback for keypad keys, otherwise one cannot bind
         * KP_1 independent of KP_End. */
        if (sym >= XKB_KEY_KP_Space && sym <= XKB_KEY_KP_Equal)
            return;
        numlock_state = resolving->xkb_state_numlock_no_shift;
        sym = FUNC4(resolving->xkb_state_no_shift, key);
        if (sym != resolving->keysym)
            return;
    }
    Binding *bind = resolving->bind;

    FUNC0(key, bind->event_state_mask);

    /* Also bind the key with active CapsLock */
    FUNC0(key, bind->event_state_mask | XCB_MOD_MASK_LOCK);

    /* If this binding is not explicitly for NumLock, check whether we need to
     * add a fallback. */
    if ((bind->event_state_mask & xcb_numlock_mask) != xcb_numlock_mask) {
        /* Check whether the keycode results in the same keysym when NumLock is
         * active. If so, grab the key with NumLock as well, so that users don’t
         * need to duplicate every key binding with an additional Mod2 specified.
         */
        xkb_keysym_t sym_numlock = FUNC4(numlock_state, key);
        if (sym_numlock == resolving->keysym) {
            /* Also bind the key with active NumLock */
            FUNC0(key, bind->event_state_mask | xcb_numlock_mask);

            /* Also bind the key with active NumLock+CapsLock */
            FUNC0(key, bind->event_state_mask | xcb_numlock_mask | XCB_MOD_MASK_LOCK);
        } else {
            FUNC1("Skipping automatic numlock fallback, key %d resolves to 0x%x with numlock\n",
                 key, sym_numlock);
        }
    }
}