
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct xkb_state {int dummy; } ;
struct xkb_keymap {int dummy; } ;
struct xkb_compose_table {int dummy; } ;
struct xkb_compose_state {int dummy; } ;
struct wl_keyboard {int dummy; } ;
struct TYPE_4__ {int controlMask; int altMask; int shiftMask; int superMask; int capsLockMask; int numLockMask; struct xkb_keymap* keymap; struct xkb_state* state; struct xkb_compose_state* composeState; int context; } ;
struct TYPE_5__ {TYPE_1__ xkb; } ;
struct TYPE_6__ {TYPE_2__ wl; } ;


 int GLFW_PLATFORM_ERROR ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 scalar_t__ WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 ;
 int XKB_COMPOSE_COMPILE_NO_FLAGS ;
 int XKB_COMPOSE_STATE_NO_FLAGS ;
 int XKB_KEYMAP_FORMAT_TEXT_V1 ;
 TYPE_3__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int close (int) ;
 char* getenv (char*) ;
 char* mmap (int *,scalar_t__,int ,int ,int,int ) ;
 int munmap (char*,scalar_t__) ;
 struct xkb_compose_state* xkb_compose_state_new (struct xkb_compose_table*,int ) ;
 struct xkb_compose_table* xkb_compose_table_new_from_locale (int ,char const*,int ) ;
 int xkb_compose_table_unref (struct xkb_compose_table*) ;
 int xkb_keymap_mod_get_index (struct xkb_keymap*,char*) ;
 struct xkb_keymap* xkb_keymap_new_from_string (int ,char*,int ,int ) ;
 int xkb_keymap_unref (struct xkb_keymap*) ;
 struct xkb_state* xkb_state_new (struct xkb_keymap*) ;
 int xkb_state_unref (struct xkb_state*) ;

__attribute__((used)) static void keyboardHandleKeymap(void* data,
                                 struct wl_keyboard* keyboard,
                                 uint32_t format,
                                 int fd,
                                 uint32_t size)
{
    struct xkb_keymap* keymap;
    struct xkb_state* state;






    char* mapStr;
    const char* locale;

    if (format != WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1)
    {
        close(fd);
        return;
    }

    mapStr = mmap(((void*)0), size, PROT_READ, MAP_SHARED, fd, 0);
    if (mapStr == MAP_FAILED) {
        close(fd);
        return;
    }

    keymap = xkb_keymap_new_from_string(_glfw.wl.xkb.context,
                                        mapStr,
                                        XKB_KEYMAP_FORMAT_TEXT_V1,
                                        0);
    munmap(mapStr, size);
    close(fd);

    if (!keymap)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to compile keymap");
        return;
    }

    state = xkb_state_new(keymap);
    if (!state)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Failed to create XKB state");
        xkb_keymap_unref(keymap);
        return;
    }


    locale = getenv("LC_ALL");
    if (!locale)
        locale = getenv("LC_CTYPE");
    if (!locale)
        locale = getenv("LANG");
    if (!locale)
        locale = "C";
    xkb_keymap_unref(_glfw.wl.xkb.keymap);
    xkb_state_unref(_glfw.wl.xkb.state);
    _glfw.wl.xkb.keymap = keymap;
    _glfw.wl.xkb.state = state;

    _glfw.wl.xkb.controlMask =
        1 << xkb_keymap_mod_get_index(_glfw.wl.xkb.keymap, "Control");
    _glfw.wl.xkb.altMask =
        1 << xkb_keymap_mod_get_index(_glfw.wl.xkb.keymap, "Mod1");
    _glfw.wl.xkb.shiftMask =
        1 << xkb_keymap_mod_get_index(_glfw.wl.xkb.keymap, "Shift");
    _glfw.wl.xkb.superMask =
        1 << xkb_keymap_mod_get_index(_glfw.wl.xkb.keymap, "Mod4");
    _glfw.wl.xkb.capsLockMask =
        1 << xkb_keymap_mod_get_index(_glfw.wl.xkb.keymap, "Lock");
    _glfw.wl.xkb.numLockMask =
        1 << xkb_keymap_mod_get_index(_glfw.wl.xkb.keymap, "Mod2");
}
