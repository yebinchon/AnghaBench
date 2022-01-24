#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t clipboardSize; char* clipboardString; int /*<<< orphan*/  dataOffer; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  GLFW_FORMAT_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

const char* FUNC7(void)
{
    int fds[2];
    int ret;
    size_t len = 0;

    if (!_glfw.wl.dataOffer)
    {
        FUNC0(GLFW_FORMAT_UNAVAILABLE,
                        "No clipboard data has been sent yet");
        return NULL;
    }

    ret = FUNC4(fds, O_CLOEXEC);
    if (ret < 0)
    {
        // TODO: also report errno maybe?
        FUNC0(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to create clipboard pipe fds");
        return NULL;
    }

    FUNC6(_glfw.wl.dataOffer, "text/plain;charset=utf-8", fds[1]);
    FUNC1(fds[1]);

    // XXX: this is a huge hack, this function shouldn’t be synchronous!
    FUNC3(-1);

    while (1)
    {
        // Grow the clipboard if we need to paste something bigger, there is no
        // shrink operation yet.
        if (len + 4096 > _glfw.wl.clipboardSize)
        {
            if (!FUNC2())
            {
                FUNC1(fds[0]);
                return NULL;
            }
        }

        // Then read from the fd to the clipboard, handling all known errors.
        ret = FUNC5(fds[0], _glfw.wl.clipboardString + len, 4096);
        if (ret == 0)
            break;
        if (ret == -1 && errno == EINTR)
            continue;
        if (ret == -1)
        {
            // TODO: also report errno maybe.
            FUNC0(GLFW_PLATFORM_ERROR,
                            "Wayland: Impossible to read from clipboard fd");
            FUNC1(fds[0]);
            return NULL;
        }
        len += ret;
    }
    FUNC1(fds[0]);
    if (len + 1 > _glfw.wl.clipboardSize)
    {
        if (!FUNC2())
            return NULL;
    }
    _glfw.wl.clipboardString[len] = '\0';
    return _glfw.wl.clipboardString;
}