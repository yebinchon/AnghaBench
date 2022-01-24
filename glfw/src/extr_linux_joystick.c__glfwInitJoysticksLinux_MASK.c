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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  regmatch_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  _GLFWjoystick ;
struct TYPE_3__ {scalar_t__ inotify; int /*<<< orphan*/  regex; int /*<<< orphan*/  watch; } ;
struct TYPE_4__ {int /*<<< orphan*/  joysticks; TYPE_1__ linjs; } ;
typedef  int /*<<< orphan*/  GLFWbool ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int IN_ATTRIB ; 
 int IN_CLOEXEC ; 
 int IN_CREATE ; 
 int IN_DELETE ; 
 int IN_NONBLOCK ; 
 int PATH_MAX ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compareJoysticks ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*,char*) ; 

GLFWbool FUNC11(void)
{
    const char* dirname = "/dev/input";

    _glfw.linjs.inotify = FUNC3(IN_NONBLOCK | IN_CLOEXEC);
    if (_glfw.linjs.inotify > 0)
    {
        // HACK: Register for IN_ATTRIB to get notified when udev is done
        //       This works well in practice but the true way is libudev

        _glfw.linjs.watch = FUNC2(_glfw.linjs.inotify,
                                              dirname,
                                              IN_CREATE | IN_ATTRIB | IN_DELETE);
    }

    // Continue without device connection notifications if inotify fails

    if (FUNC8(&_glfw.linjs.regex, "^event[0-9]\\+$", 0) != 0)
    {
        FUNC0(GLFW_PLATFORM_ERROR, "Linux: Failed to compile regex");
        return GLFW_FALSE;
    }

    int count = 0;

    DIR* dir = FUNC5(dirname);
    if (dir)
    {
        struct dirent* entry;

        while ((entry = FUNC7(dir)))
        {
            regmatch_t match;

            if (FUNC9(&_glfw.linjs.regex, entry->d_name, 1, &match, 0) != 0)
                continue;

            char path[PATH_MAX];

            FUNC10(path, sizeof(path), "%s/%s", dirname, entry->d_name);

            if (FUNC4(path))
                count++;
        }

        FUNC1(dir);
    }

    // Continue with no joysticks if enumeration fails

    FUNC6(_glfw.joysticks, count, sizeof(_GLFWjoystick), compareJoysticks);
    return GLFW_TRUE;
}