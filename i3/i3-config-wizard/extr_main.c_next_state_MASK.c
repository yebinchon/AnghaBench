#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int xkb_keysym_t ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_3__ {scalar_t__ next_state; } ;
typedef  TYPE_1__ cmdp_token ;
typedef  scalar_t__ cmdp_state ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 scalar_t__ __CALL ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC8 (char const*) ; 
 scalar_t__ state ; 
 scalar_t__* statelist ; 
 int statelist_idx ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  xkb_keymap ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int const**) ; 
 int FUNC12 (int const,char*,int) ; 

__attribute__((used)) static char *FUNC13(const cmdp_token *token) {
    cmdp_state _next_state = token->next_state;

    if (token->next_state == __CALL) {
        const char *modifiers = FUNC4("modifiers");
        int keycode = FUNC0(FUNC4("key"));
        int level = 0;
        if (modifiers != NULL &&
            FUNC10(modifiers, "Shift") != NULL) {
            /* When shift is included, we really need to use the second-level
             * symbol (upper-case). The lower-case symbol could be on a
             * different key than the upper-case one (unlikely for letters, but
             * more likely for special characters). */
            level = 1;

            /* Try to use the keysym on the first level (lower-case). In case
             * this doesn’t make it ambiguous (think of a keyboard layout
             * having '1' on two different keys, but '!' only on keycode 10),
             * we’ll stick with the keysym of the first level.
             *
             * This reduces a lot of confusion for users who switch keyboard
             * layouts from qwerty to qwertz or other slight variations of
             * qwerty (yes, that happens quite often). */
            const xkb_keysym_t *syms;
            int num = FUNC11(xkb_keymap, keycode, 0, 0, &syms);
            if (num == 0)
                FUNC2(1, "xkb_keymap_key_get_syms_by_level returned no symbols for keycode %d", keycode);
            if (!FUNC5(syms[0], keycode))
                level = 0;
        }

        const xkb_keysym_t *syms;
        int num = FUNC11(xkb_keymap, keycode, 0, level, &syms);
        if (num == 0)
            FUNC2(1, "xkb_keymap_key_get_syms_by_level returned no symbols for keycode %d", keycode);
        if (num > 1)
            FUNC6("xkb_keymap_key_get_syms_by_level (keycode = %d) returned %d symbolsinstead of 1, using only the first one.\n", keycode, num);

        char str[4096];
        if (FUNC12(syms[0], str, sizeof(str)) == -1)
            FUNC2(EXIT_FAILURE, "xkb_keysym_get_name(%u) failed", syms[0]);
        const char *release = FUNC4("release");
        char *res;
        char *modrep = (modifiers == NULL ? FUNC8("") : FUNC8(modifiers));
        char *comma;
        while ((comma = FUNC9(modrep, ',')) != NULL) {
            *comma = '+';
        }
        FUNC7(&res, "bindsym %s%s%s %s%s\n", (modifiers == NULL ? "" : modrep), (modifiers == NULL ? "" : "+"), str, (release == NULL ? "" : release), FUNC4("command"));
        FUNC1();
        FUNC3(modrep);
        return res;
    }

    state = _next_state;

    /* See if we are jumping back to a state in which we were in previously
     * (statelist contains INITIAL) and just move statelist_idx accordingly. */
    for (int i = 0; i < statelist_idx; i++) {
        if (statelist[i] != _next_state)
            continue;
        statelist_idx = i + 1;
        return NULL;
    }

    /* Otherwise, the state is new and we add it to the list */
    statelist[statelist_idx++] = _next_state;
    return NULL;
}