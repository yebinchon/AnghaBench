
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int context; void* handle; scalar_t__ compose_state_get_one_sym; scalar_t__ compose_state_get_status; scalar_t__ compose_state_feed; scalar_t__ compose_state_unref; scalar_t__ compose_state_new; scalar_t__ compose_table_unref; scalar_t__ compose_table_new_from_locale; scalar_t__ state_serialize_mods; scalar_t__ state_update_mask; scalar_t__ state_key_get_syms; scalar_t__ state_unref; scalar_t__ state_new; scalar_t__ keymap_key_repeats; scalar_t__ keymap_mod_get_index; scalar_t__ keymap_unref; scalar_t__ keymap_new_from_string; scalar_t__ context_unref; scalar_t__ context_new; } ;
struct TYPE_8__ {void* handle; scalar_t__ window_resize; scalar_t__ window_destroy; scalar_t__ window_create; } ;
struct TYPE_7__ {void* handle; scalar_t__ image_get_buffer; scalar_t__ theme_get_cursor; scalar_t__ theme_destroy; scalar_t__ theme_load; } ;
struct TYPE_9__ {int timerfd; int seatVersion; int clipboardSize; int clipboardString; int dataDevice; scalar_t__ seat; scalar_t__ dataDeviceManager; void* cursorTimerfd; int compositor; int cursorSurface; scalar_t__ shm; void* cursorThemeHiDPI; void* cursorTheme; scalar_t__ pointer; int wmBase; int display; TYPE_1__ xkb; int registry; TYPE_3__ egl; TYPE_2__ cursor; } ;
struct TYPE_10__ {TYPE_4__ wl; } ;
typedef scalar_t__ PFN_xkb_state_update_mask ;
typedef scalar_t__ PFN_xkb_state_unref ;
typedef scalar_t__ PFN_xkb_state_serialize_mods ;
typedef scalar_t__ PFN_xkb_state_new ;
typedef scalar_t__ PFN_xkb_state_key_get_syms ;
typedef scalar_t__ PFN_xkb_keymap_unref ;
typedef scalar_t__ PFN_xkb_keymap_new_from_string ;
typedef scalar_t__ PFN_xkb_keymap_mod_get_index ;
typedef scalar_t__ PFN_xkb_keymap_key_repeats ;
typedef scalar_t__ PFN_xkb_context_unref ;
typedef scalar_t__ PFN_xkb_context_new ;
typedef scalar_t__ PFN_xkb_compose_table_unref ;
typedef scalar_t__ PFN_xkb_compose_table_new_from_locale ;
typedef scalar_t__ PFN_xkb_compose_state_unref ;
typedef scalar_t__ PFN_xkb_compose_state_new ;
typedef scalar_t__ PFN_xkb_compose_state_get_status ;
typedef scalar_t__ PFN_xkb_compose_state_get_one_sym ;
typedef scalar_t__ PFN_xkb_compose_state_feed ;
typedef scalar_t__ PFN_wl_egl_window_resize ;
typedef scalar_t__ PFN_wl_egl_window_destroy ;
typedef scalar_t__ PFN_wl_egl_window_create ;
typedef scalar_t__ PFN_wl_cursor_theme_load ;
typedef scalar_t__ PFN_wl_cursor_theme_get_cursor ;
typedef scalar_t__ PFN_wl_cursor_theme_destroy ;
typedef scalar_t__ PFN_wl_cursor_image_get_buffer ;


 int CLOCK_MONOTONIC ;
 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 long INT_MAX ;
 int TFD_CLOEXEC ;
 TYPE_5__ _glfw ;
 int _glfwInitJoysticksLinux () ;
 int _glfwInitTimerPOSIX () ;
 int _glfwInputError (int ,char*) ;
 void* _glfw_dlopen (char*) ;
 scalar_t__ _glfw_dlsym (void*,char*) ;
 int createKeyTables () ;
 int dataDeviceListener ;
 scalar_t__ errno ;
 char* getenv (char*) ;
 int malloc (int) ;
 int registryListener ;
 long strtol (char const*,char**,int) ;
 void* timerfd_create (int ,int ) ;
 int wl_compositor_create_surface (int ) ;
 void* wl_cursor_theme_load (char const*,int,scalar_t__) ;
 int wl_data_device_add_listener (int ,int *,int *) ;
 int wl_data_device_manager_get_data_device (scalar_t__,scalar_t__) ;
 int wl_display_connect (int *) ;
 int wl_display_get_registry (int ) ;
 int wl_display_roundtrip (int ) ;
 int wl_registry_add_listener (int ,int *,int *) ;
 int xkb_context_new (int ) ;

int _glfwPlatformInit(void)
{
    const char *cursorTheme;
    const char *cursorSizeStr;
    char *cursorSizeEnd;
    long cursorSizeLong;
    int cursorSize;

    _glfw.wl.cursor.handle = _glfw_dlopen("libwayland-cursor.so.0");
    if (!_glfw.wl.cursor.handle)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to open libwayland-cursor");
        return GLFW_FALSE;
    }

    _glfw.wl.cursor.theme_load = (PFN_wl_cursor_theme_load)
        _glfw_dlsym(_glfw.wl.cursor.handle, "wl_cursor_theme_load");
    _glfw.wl.cursor.theme_destroy = (PFN_wl_cursor_theme_destroy)
        _glfw_dlsym(_glfw.wl.cursor.handle, "wl_cursor_theme_destroy");
    _glfw.wl.cursor.theme_get_cursor = (PFN_wl_cursor_theme_get_cursor)
        _glfw_dlsym(_glfw.wl.cursor.handle, "wl_cursor_theme_get_cursor");
    _glfw.wl.cursor.image_get_buffer = (PFN_wl_cursor_image_get_buffer)
        _glfw_dlsym(_glfw.wl.cursor.handle, "wl_cursor_image_get_buffer");

    _glfw.wl.egl.handle = _glfw_dlopen("libwayland-egl.so.1");
    if (!_glfw.wl.egl.handle)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to open libwayland-egl");
        return GLFW_FALSE;
    }

    _glfw.wl.egl.window_create = (PFN_wl_egl_window_create)
        _glfw_dlsym(_glfw.wl.egl.handle, "wl_egl_window_create");
    _glfw.wl.egl.window_destroy = (PFN_wl_egl_window_destroy)
        _glfw_dlsym(_glfw.wl.egl.handle, "wl_egl_window_destroy");
    _glfw.wl.egl.window_resize = (PFN_wl_egl_window_resize)
        _glfw_dlsym(_glfw.wl.egl.handle, "wl_egl_window_resize");

    _glfw.wl.xkb.handle = _glfw_dlopen("libxkbcommon.so.0");
    if (!_glfw.wl.xkb.handle)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to open libxkbcommon");
        return GLFW_FALSE;
    }

    _glfw.wl.xkb.context_new = (PFN_xkb_context_new)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_context_new");
    _glfw.wl.xkb.context_unref = (PFN_xkb_context_unref)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_context_unref");
    _glfw.wl.xkb.keymap_new_from_string = (PFN_xkb_keymap_new_from_string)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_keymap_new_from_string");
    _glfw.wl.xkb.keymap_unref = (PFN_xkb_keymap_unref)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_keymap_unref");
    _glfw.wl.xkb.keymap_mod_get_index = (PFN_xkb_keymap_mod_get_index)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_keymap_mod_get_index");
    _glfw.wl.xkb.keymap_key_repeats = (PFN_xkb_keymap_key_repeats)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_keymap_key_repeats");
    _glfw.wl.xkb.state_new = (PFN_xkb_state_new)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_state_new");
    _glfw.wl.xkb.state_unref = (PFN_xkb_state_unref)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_state_unref");
    _glfw.wl.xkb.state_key_get_syms = (PFN_xkb_state_key_get_syms)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_state_key_get_syms");
    _glfw.wl.xkb.state_update_mask = (PFN_xkb_state_update_mask)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_state_update_mask");
    _glfw.wl.xkb.state_serialize_mods = (PFN_xkb_state_serialize_mods)
        _glfw_dlsym(_glfw.wl.xkb.handle, "xkb_state_serialize_mods");
    _glfw.wl.display = wl_display_connect(((void*)0));
    if (!_glfw.wl.display)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to connect to display");
        return GLFW_FALSE;
    }

    _glfw.wl.registry = wl_display_get_registry(_glfw.wl.display);
    wl_registry_add_listener(_glfw.wl.registry, &registryListener, ((void*)0));

    createKeyTables();

    _glfw.wl.xkb.context = xkb_context_new(0);
    if (!_glfw.wl.xkb.context)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to initialize xkb context");
        return GLFW_FALSE;
    }


    wl_display_roundtrip(_glfw.wl.display);


    wl_display_roundtrip(_glfw.wl.display);


    if (!_glfwInitJoysticksLinux())
        return GLFW_FALSE;


    _glfwInitTimerPOSIX();

    _glfw.wl.timerfd = -1;
    if (_glfw.wl.seatVersion >= 4)
        _glfw.wl.timerfd = timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC);

    if (!_glfw.wl.wmBase)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to find xdg-shell in your compositor");
        return GLFW_FALSE;
    }

    if (_glfw.wl.pointer && _glfw.wl.shm)
    {
        cursorTheme = getenv("XCURSOR_THEME");
        cursorSizeStr = getenv("XCURSOR_SIZE");
        cursorSize = 32;
        if (cursorSizeStr)
        {
            errno = 0;
            cursorSizeLong = strtol(cursorSizeStr, &cursorSizeEnd, 10);
            if (!*cursorSizeEnd && !errno && cursorSizeLong > 0 && cursorSizeLong <= INT_MAX)
                cursorSize = (int)cursorSizeLong;
        }
        _glfw.wl.cursorTheme =
            wl_cursor_theme_load(cursorTheme, cursorSize, _glfw.wl.shm);
        if (!_glfw.wl.cursorTheme)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to load default cursor theme");
            return GLFW_FALSE;
        }

        _glfw.wl.cursorThemeHiDPI =
            wl_cursor_theme_load(cursorTheme, 2 * cursorSize, _glfw.wl.shm);
        _glfw.wl.cursorSurface =
            wl_compositor_create_surface(_glfw.wl.compositor);
        _glfw.wl.cursorTimerfd = timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC);
    }

    if (_glfw.wl.seat && _glfw.wl.dataDeviceManager)
    {
        _glfw.wl.dataDevice =
            wl_data_device_manager_get_data_device(_glfw.wl.dataDeviceManager,
                                                   _glfw.wl.seat);
        wl_data_device_add_listener(_glfw.wl.dataDevice, &dataDeviceListener, ((void*)0));
        _glfw.wl.clipboardString = malloc(4096);
        if (!_glfw.wl.clipboardString)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Unable to allocate clipboard memory");
            return GLFW_FALSE;
        }
        _glfw.wl.clipboardSize = 4096;
    }

    return GLFW_TRUE;
}
