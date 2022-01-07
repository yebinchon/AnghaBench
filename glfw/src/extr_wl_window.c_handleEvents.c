
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct wl_display {int dummy; } ;
struct pollfd {int member_1; int revents; int member_0; } ;
typedef int ssize_t ;
typedef int repeats ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_6__ {int modifiers; } ;
struct TYPE_7__ {int pointerFocus; int cursorTimerfd; TYPE_1__ xkb; int keyboardLastScancode; int keyboardLastKey; int keyboardFocus; int timerfd; struct wl_display* display; } ;
struct TYPE_9__ {TYPE_2__ wl; TYPE_3__* windowListHead; } ;


 scalar_t__ EAGAIN ;
 int GLFW_REPEAT ;
 int POLLIN ;
 TYPE_5__ _glfw ;
 int _glfwInputKey (int ,int ,int ,int ,int ) ;
 int _glfwInputWindowCloseRequest (TYPE_3__*) ;
 scalar_t__ errno ;
 int incrementCursorImage (int ) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int read (int ,scalar_t__*,int) ;
 int wl_display_cancel_read (struct wl_display*) ;
 int wl_display_dispatch_pending (struct wl_display*) ;
 scalar_t__ wl_display_flush (struct wl_display*) ;
 int wl_display_get_fd (struct wl_display*) ;
 scalar_t__ wl_display_prepare_read (struct wl_display*) ;
 int wl_display_read_events (struct wl_display*) ;

__attribute__((used)) static void handleEvents(int timeout)
{
    struct wl_display* display = _glfw.wl.display;
    struct pollfd fds[] = {
        { wl_display_get_fd(display), POLLIN },
        { _glfw.wl.timerfd, POLLIN },
        { _glfw.wl.cursorTimerfd, POLLIN },
    };
    ssize_t read_ret;
    uint64_t repeats, i;

    while (wl_display_prepare_read(display) != 0)
        wl_display_dispatch_pending(display);




    if (wl_display_flush(display) < 0 && errno != EAGAIN)
    {
        _GLFWwindow* window = _glfw.windowListHead;
        while (window)
        {
            _glfwInputWindowCloseRequest(window);
            window = window->next;
        }
        wl_display_cancel_read(display);
        return;
    }

    if (poll(fds, 3, timeout) > 0)
    {
        if (fds[0].revents & POLLIN)
        {
            wl_display_read_events(display);
            wl_display_dispatch_pending(display);
        }
        else
        {
            wl_display_cancel_read(display);
        }

        if (fds[1].revents & POLLIN)
        {
            read_ret = read(_glfw.wl.timerfd, &repeats, sizeof(repeats));
            if (read_ret != 8)
                return;

            for (i = 0; i < repeats; ++i)
                _glfwInputKey(_glfw.wl.keyboardFocus, _glfw.wl.keyboardLastKey,
                              _glfw.wl.keyboardLastScancode, GLFW_REPEAT,
                              _glfw.wl.xkb.modifiers);
        }

        if (fds[2].revents & POLLIN)
        {
            read_ret = read(_glfw.wl.cursorTimerfd, &repeats, sizeof(repeats));
            if (read_ret != 8)
                return;

            incrementCursorImage(_glfw.wl.pointerFocus);
        }
    }
    else
    {
        wl_display_cancel_read(display);
    }
}
