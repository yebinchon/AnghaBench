#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct xkb_state {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct xkb_compose_table {int dummy; } ;
struct xkb_compose_state {int dummy; } ;
struct wl_keyboard {int dummy; } ;
struct TYPE_4__ {int controlMask; int altMask; int shiftMask; int superMask; int capsLockMask; int numLockMask; struct xkb_keymap* keymap; struct xkb_state* state; struct xkb_compose_state* composeState; int /*<<< orphan*/  context; } ;
struct TYPE_5__ {TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 ; 
 int /*<<< orphan*/  XKB_COMPOSE_COMPILE_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_COMPOSE_STATE_NO_FLAGS ; 
 int /*<<< orphan*/  XKB_KEYMAP_FORMAT_TEXT_V1 ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 struct xkb_compose_state* FUNC5 (struct xkb_compose_table*,int /*<<< orphan*/ ) ; 
 struct xkb_compose_table* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xkb_compose_table*) ; 
 int FUNC8 (struct xkb_keymap*,char*) ; 
 struct xkb_keymap* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xkb_keymap*) ; 
 struct xkb_state* FUNC11 (struct xkb_keymap*) ; 
 int /*<<< orphan*/  FUNC12 (struct xkb_state*) ; 

__attribute__((used)) static void FUNC13(void* data,
                                 struct wl_keyboard* keyboard,
                                 uint32_t format,
                                 int fd,
                                 uint32_t size)
{
    struct xkb_keymap* keymap;
    struct xkb_state* state;

#ifdef HAVE_XKBCOMMON_COMPOSE_H
    struct xkb_compose_table* composeTable;
    struct xkb_compose_state* composeState;
#endif

    char* mapStr;
    const char* locale;

    if (format != WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1)
    {
        FUNC1(fd);
        return;
    }

    mapStr = FUNC3(NULL, size, PROT_READ, MAP_SHARED, fd, 0);
    if (mapStr == MAP_FAILED) {
        FUNC1(fd);
        return;
    }

    keymap = FUNC9(_glfw.wl.xkb.context,
                                        mapStr,
                                        XKB_KEYMAP_FORMAT_TEXT_V1,
                                        0);
    FUNC4(mapStr, size);
    FUNC1(fd);

    if (!keymap)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to compile keymap");
        return;
    }

    state = FUNC11(keymap);
    if (!state)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to create XKB state");
        FUNC10(keymap);
        return;
    }

    // Look up the preferred locale, falling back to "C" as default.
    locale = FUNC2("LC_ALL");
    if (!locale)
        locale = FUNC2("LC_CTYPE");
    if (!locale)
        locale = FUNC2("LANG");
    if (!locale)
        locale = "C";

#ifdef HAVE_XKBCOMMON_COMPOSE_H
    composeTable =
        xkb_compose_table_new_from_locale(_glfw.wl.xkb.context, locale,
                                          XKB_COMPOSE_COMPILE_NO_FLAGS);
    if (composeTable)
    {
        composeState =
            xkb_compose_state_new(composeTable, XKB_COMPOSE_STATE_NO_FLAGS);
        xkb_compose_table_unref(composeTable);
        if (composeState)
            _glfw.wl.xkb.composeState = composeState;
        else
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Failed to create XKB compose state");
    }
    else
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to create XKB compose table");
    }
#endif

    FUNC10(_glfw.wl.xkb.keymap);
    FUNC12(_glfw.wl.xkb.state);
    _glfw.wl.xkb.keymap = keymap;
    _glfw.wl.xkb.state = state;

    _glfw.wl.xkb.controlMask =
        1 << FUNC8(_glfw.wl.xkb.keymap, "Control");
    _glfw.wl.xkb.altMask =
        1 << FUNC8(_glfw.wl.xkb.keymap, "Mod1");
    _glfw.wl.xkb.shiftMask =
        1 << FUNC8(_glfw.wl.xkb.keymap, "Shift");
    _glfw.wl.xkb.superMask =
        1 << FUNC8(_glfw.wl.xkb.keymap, "Mod4");
    _glfw.wl.xkb.capsLockMask =
        1 << FUNC8(_glfw.wl.xkb.keymap, "Lock");
    _glfw.wl.xkb.numLockMask =
        1 << FUNC8(_glfw.wl.xkb.keymap, "Mod2");
}