
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wl_surface {int dummy; } ;
struct wl_cursor_theme {int dummy; } ;
struct wl_cursor_image {int hotspot_x; int hotspot_y; int height; int width; } ;
struct wl_cursor {struct wl_cursor_image** images; } ;
struct wl_buffer {int dummy; } ;
struct TYPE_6__ {int scale; } ;
struct TYPE_8__ {TYPE_1__ wl; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int serial; int pointer; struct wl_cursor_theme* cursorThemeHiDPI; struct wl_cursor_theme* cursorTheme; struct wl_surface* cursorSurface; } ;
struct TYPE_9__ {TYPE_2__ wl; } ;


 int GLFW_PLATFORM_ERROR ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*) ;
 struct wl_buffer* wl_cursor_image_get_buffer (struct wl_cursor_image*) ;
 struct wl_cursor* wl_cursor_theme_get_cursor (struct wl_cursor_theme*,char const*) ;
 int wl_pointer_set_cursor (int ,int ,struct wl_surface*,int,int) ;
 int wl_surface_attach (struct wl_surface*,struct wl_buffer*,int ,int ) ;
 int wl_surface_commit (struct wl_surface*) ;
 int wl_surface_damage (struct wl_surface*,int ,int ,int ,int ) ;
 int wl_surface_set_buffer_scale (struct wl_surface*,int) ;

__attribute__((used)) static void setCursor(_GLFWwindow* window, const char* name)
{
    struct wl_buffer* buffer;
    struct wl_cursor* cursor;
    struct wl_cursor_image* image;
    struct wl_surface* surface = _glfw.wl.cursorSurface;
    struct wl_cursor_theme* theme = _glfw.wl.cursorTheme;
    int scale = 1;

    if (window->wl.scale > 1 && _glfw.wl.cursorThemeHiDPI)
    {


        scale = 2;
        theme = _glfw.wl.cursorThemeHiDPI;
    }

    cursor = wl_cursor_theme_get_cursor(theme, name);
    if (!cursor)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Standard cursor not found");
        return;
    }

    image = cursor->images[0];

    if (!image)
        return;

    buffer = wl_cursor_image_get_buffer(image);
    if (!buffer)
        return;
    wl_pointer_set_cursor(_glfw.wl.pointer, _glfw.wl.serial,
                          surface,
                          image->hotspot_x / scale,
                          image->hotspot_y / scale);
    wl_surface_set_buffer_scale(surface, scale);
    wl_surface_attach(surface, buffer, 0, 0);
    wl_surface_damage(surface, 0, 0,
                      image->width, image->height);
    wl_surface_commit(surface);
}
