#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  context; void* handle; scalar_t__ compose_state_get_one_sym; scalar_t__ compose_state_get_status; scalar_t__ compose_state_feed; scalar_t__ compose_state_unref; scalar_t__ compose_state_new; scalar_t__ compose_table_unref; scalar_t__ compose_table_new_from_locale; scalar_t__ state_serialize_mods; scalar_t__ state_update_mask; scalar_t__ state_key_get_syms; scalar_t__ state_unref; scalar_t__ state_new; scalar_t__ keymap_key_repeats; scalar_t__ keymap_mod_get_index; scalar_t__ keymap_unref; scalar_t__ keymap_new_from_string; scalar_t__ context_unref; scalar_t__ context_new; } ;
struct TYPE_8__ {void* handle; scalar_t__ window_resize; scalar_t__ window_destroy; scalar_t__ window_create; } ;
struct TYPE_7__ {void* handle; scalar_t__ image_get_buffer; scalar_t__ theme_get_cursor; scalar_t__ theme_destroy; scalar_t__ theme_load; } ;
struct TYPE_9__ {int timerfd; int seatVersion; int clipboardSize; int /*<<< orphan*/  clipboardString; int /*<<< orphan*/  dataDevice; scalar_t__ seat; scalar_t__ dataDeviceManager; void* cursorTimerfd; int /*<<< orphan*/  compositor; int /*<<< orphan*/  cursorSurface; scalar_t__ shm; void* cursorThemeHiDPI; void* cursorTheme; scalar_t__ pointer; int /*<<< orphan*/  wmBase; int /*<<< orphan*/  display; TYPE_1__ xkb; int /*<<< orphan*/  registry; TYPE_3__ egl; TYPE_2__ cursor; } ;
struct TYPE_10__ {TYPE_4__ wl; } ;
typedef  scalar_t__ PFN_xkb_state_update_mask ;
typedef  scalar_t__ PFN_xkb_state_unref ;
typedef  scalar_t__ PFN_xkb_state_serialize_mods ;
typedef  scalar_t__ PFN_xkb_state_new ;
typedef  scalar_t__ PFN_xkb_state_key_get_syms ;
typedef  scalar_t__ PFN_xkb_keymap_unref ;
typedef  scalar_t__ PFN_xkb_keymap_new_from_string ;
typedef  scalar_t__ PFN_xkb_keymap_mod_get_index ;
typedef  scalar_t__ PFN_xkb_keymap_key_repeats ;
typedef  scalar_t__ PFN_xkb_context_unref ;
typedef  scalar_t__ PFN_xkb_context_new ;
typedef  scalar_t__ PFN_xkb_compose_table_unref ;
typedef  scalar_t__ PFN_xkb_compose_table_new_from_locale ;
typedef  scalar_t__ PFN_xkb_compose_state_unref ;
typedef  scalar_t__ PFN_xkb_compose_state_new ;
typedef  scalar_t__ PFN_xkb_compose_state_get_status ;
typedef  scalar_t__ PFN_xkb_compose_state_get_one_sym ;
typedef  scalar_t__ PFN_xkb_compose_state_feed ;
typedef  scalar_t__ PFN_wl_egl_window_resize ;
typedef  scalar_t__ PFN_wl_egl_window_destroy ;
typedef  scalar_t__ PFN_wl_egl_window_create ;
typedef  scalar_t__ PFN_wl_cursor_theme_load ;
typedef  scalar_t__ PFN_wl_cursor_theme_get_cursor ;
typedef  scalar_t__ PFN_wl_cursor_theme_destroy ;
typedef  scalar_t__ PFN_wl_cursor_image_get_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int GLFW_TRUE ; 
 long INT_MAX ; 
 int /*<<< orphan*/  TFD_CLOEXEC ; 
 TYPE_5__ _glfw ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (void*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  dataDeviceListener ; 
 scalar_t__ errno ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  registryListener ; 
 long FUNC8 (char const*,char**,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(void)
{
    const char *cursorTheme;
    const char *cursorSizeStr;
    char *cursorSizeEnd;
    long cursorSizeLong;
    int cursorSize;

    _glfw.wl.cursor.handle = FUNC3("libwayland-cursor.so.0");
    if (!_glfw.wl.cursor.handle)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to open libwayland-cursor");
        return GLFW_FALSE;
    }

    _glfw.wl.cursor.theme_load = (PFN_wl_cursor_theme_load)
        FUNC4(_glfw.wl.cursor.handle, "wl_cursor_theme_load");
    _glfw.wl.cursor.theme_destroy = (PFN_wl_cursor_theme_destroy)
        FUNC4(_glfw.wl.cursor.handle, "wl_cursor_theme_destroy");
    _glfw.wl.cursor.theme_get_cursor = (PFN_wl_cursor_theme_get_cursor)
        FUNC4(_glfw.wl.cursor.handle, "wl_cursor_theme_get_cursor");
    _glfw.wl.cursor.image_get_buffer = (PFN_wl_cursor_image_get_buffer)
        FUNC4(_glfw.wl.cursor.handle, "wl_cursor_image_get_buffer");

    _glfw.wl.egl.handle = FUNC3("libwayland-egl.so.1");
    if (!_glfw.wl.egl.handle)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to open libwayland-egl");
        return GLFW_FALSE;
    }

    _glfw.wl.egl.window_create = (PFN_wl_egl_window_create)
        FUNC4(_glfw.wl.egl.handle, "wl_egl_window_create");
    _glfw.wl.egl.window_destroy = (PFN_wl_egl_window_destroy)
        FUNC4(_glfw.wl.egl.handle, "wl_egl_window_destroy");
    _glfw.wl.egl.window_resize = (PFN_wl_egl_window_resize)
        FUNC4(_glfw.wl.egl.handle, "wl_egl_window_resize");

    _glfw.wl.xkb.handle = FUNC3("libxkbcommon.so.0");
    if (!_glfw.wl.xkb.handle)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to open libxkbcommon");
        return GLFW_FALSE;
    }

    _glfw.wl.xkb.context_new = (PFN_xkb_context_new)
        FUNC4(_glfw.wl.xkb.handle, "xkb_context_new");
    _glfw.wl.xkb.context_unref = (PFN_xkb_context_unref)
        FUNC4(_glfw.wl.xkb.handle, "xkb_context_unref");
    _glfw.wl.xkb.keymap_new_from_string = (PFN_xkb_keymap_new_from_string)
        FUNC4(_glfw.wl.xkb.handle, "xkb_keymap_new_from_string");
    _glfw.wl.xkb.keymap_unref = (PFN_xkb_keymap_unref)
        FUNC4(_glfw.wl.xkb.handle, "xkb_keymap_unref");
    _glfw.wl.xkb.keymap_mod_get_index = (PFN_xkb_keymap_mod_get_index)
        FUNC4(_glfw.wl.xkb.handle, "xkb_keymap_mod_get_index");
    _glfw.wl.xkb.keymap_key_repeats = (PFN_xkb_keymap_key_repeats)
        FUNC4(_glfw.wl.xkb.handle, "xkb_keymap_key_repeats");
    _glfw.wl.xkb.state_new = (PFN_xkb_state_new)
        FUNC4(_glfw.wl.xkb.handle, "xkb_state_new");
    _glfw.wl.xkb.state_unref = (PFN_xkb_state_unref)
        FUNC4(_glfw.wl.xkb.handle, "xkb_state_unref");
    _glfw.wl.xkb.state_key_get_syms = (PFN_xkb_state_key_get_syms)
        FUNC4(_glfw.wl.xkb.handle, "xkb_state_key_get_syms");
    _glfw.wl.xkb.state_update_mask = (PFN_xkb_state_update_mask)
        FUNC4(_glfw.wl.xkb.handle, "xkb_state_update_mask");
    _glfw.wl.xkb.state_serialize_mods = (PFN_xkb_state_serialize_mods)
        FUNC4(_glfw.wl.xkb.handle, "xkb_state_serialize_mods");

#ifdef HAVE_XKBCOMMON_COMPOSE_H
    _glfw.wl.xkb.compose_table_new_from_locale = (PFN_xkb_compose_table_new_from_locale)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_table_new_from_locale");
    _glfw.wl.xkb.compose_table_unref = (PFN_xkb_compose_table_unref)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_table_unref");
    _glfw.wl.xkb.compose_state_new = (PFN_xkb_compose_state_new)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_state_new");
    _glfw.wl.xkb.compose_state_unref = (PFN_xkb_compose_state_unref)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_state_unref");
    _glfw.wl.xkb.compose_state_feed = (PFN_xkb_compose_state_feed)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_state_feed");
    _glfw.wl.xkb.compose_state_get_status = (PFN_xkb_compose_state_get_status)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_state_get_status");
    _glfw.wl.xkb.compose_state_get_one_sym = (PFN_xkb_compose_state_get_one_sym)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_compose_state_get_one_sym");
#endif

    _glfw.wl.display = FUNC14(NULL);
    if (!_glfw.wl.display)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to connect to display");
        return GLFW_FALSE;
    }

    _glfw.wl.registry = FUNC15(_glfw.wl.display);
    FUNC17(_glfw.wl.registry, &registryListener, NULL);

    FUNC5();

    _glfw.wl.xkb.context = FUNC18(0);
    if (!_glfw.wl.xkb.context)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to initialize xkb context");
        return GLFW_FALSE;
    }

    // Sync so we got all registry objects
    FUNC16(_glfw.wl.display);

    // Sync so we got all initial output events
    FUNC16(_glfw.wl.display);

#ifdef __linux__
    if (!FUNC0())
        return GLFW_FALSE;
#endif

    FUNC1();

    _glfw.wl.timerfd = -1;
    if (_glfw.wl.seatVersion >= 4)
        _glfw.wl.timerfd = FUNC9(CLOCK_MONOTONIC, TFD_CLOEXEC);

    if (!_glfw.wl.wmBase)
    {
        FUNC2(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to find xdg-shell in your compositor");
        return GLFW_FALSE;
    }

    if (_glfw.wl.pointer && _glfw.wl.shm)
    {
        cursorTheme = FUNC6("XCURSOR_THEME");
        cursorSizeStr = FUNC6("XCURSOR_SIZE");
        cursorSize = 32;
        if (cursorSizeStr)
        {
            errno = 0;
            cursorSizeLong = FUNC8(cursorSizeStr, &cursorSizeEnd, 10);
            if (!*cursorSizeEnd && !errno && cursorSizeLong > 0 && cursorSizeLong <= INT_MAX)
                cursorSize = (int)cursorSizeLong;
        }
        _glfw.wl.cursorTheme =
            FUNC11(cursorTheme, cursorSize, _glfw.wl.shm);
        if (!_glfw.wl.cursorTheme)
        {
            FUNC2(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to load default cursor theme");
            return GLFW_FALSE;
        }
        // If this happens to be NULL, we just fallback to the scale=1 version.
        _glfw.wl.cursorThemeHiDPI =
            FUNC11(cursorTheme, 2 * cursorSize, _glfw.wl.shm);
        _glfw.wl.cursorSurface =
            FUNC10(_glfw.wl.compositor);
        _glfw.wl.cursorTimerfd = FUNC9(CLOCK_MONOTONIC, TFD_CLOEXEC);
    }

    if (_glfw.wl.seat && _glfw.wl.dataDeviceManager)
    {
        _glfw.wl.dataDevice =
            FUNC13(_glfw.wl.dataDeviceManager,
                                                   _glfw.wl.seat);
        FUNC12(_glfw.wl.dataDevice, &dataDeviceListener, NULL);
        _glfw.wl.clipboardString = FUNC7(4096);
        if (!_glfw.wl.clipboardString)
        {
            FUNC2(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to allocate clipboard memory");
            return GLFW_FALSE;
        }
        _glfw.wl.clipboardSize = 4096;
    }

    return GLFW_TRUE;
}