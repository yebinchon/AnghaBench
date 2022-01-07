
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dirent {char* d_name; } ;
typedef int regmatch_t ;
typedef int path ;
typedef int _GLFWjoystick ;
struct TYPE_3__ {scalar_t__ inotify; int regex; int watch; } ;
struct TYPE_4__ {int joysticks; TYPE_1__ linjs; } ;
typedef int GLFWbool ;
typedef int DIR ;


 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int IN_ATTRIB ;
 int IN_CLOEXEC ;
 int IN_CREATE ;
 int IN_DELETE ;
 int IN_NONBLOCK ;
 int PATH_MAX ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int closedir (int *) ;
 int compareJoysticks ;
 int inotify_add_watch (scalar_t__,char const*,int) ;
 scalar_t__ inotify_init1 (int) ;
 scalar_t__ openJoystickDevice (char*) ;
 int * opendir (char const*) ;
 int qsort (int ,int,int,int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ regcomp (int *,char*,int ) ;
 scalar_t__ regexec (int *,char*,int,int *,int ) ;
 int snprintf (char*,int,char*,char const*,char*) ;

GLFWbool _glfwInitJoysticksLinux(void)
{
    const char* dirname = "/dev/input";

    _glfw.linjs.inotify = inotify_init1(IN_NONBLOCK | IN_CLOEXEC);
    if (_glfw.linjs.inotify > 0)
    {



        _glfw.linjs.watch = inotify_add_watch(_glfw.linjs.inotify,
                                              dirname,
                                              IN_CREATE | IN_ATTRIB | IN_DELETE);
    }



    if (regcomp(&_glfw.linjs.regex, "^event[0-9]\\+$", 0) != 0)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR, "Linux: Failed to compile regex");
        return GLFW_FALSE;
    }

    int count = 0;

    DIR* dir = opendir(dirname);
    if (dir)
    {
        struct dirent* entry;

        while ((entry = readdir(dir)))
        {
            regmatch_t match;

            if (regexec(&_glfw.linjs.regex, entry->d_name, 1, &match, 0) != 0)
                continue;

            char path[PATH_MAX];

            snprintf(path, sizeof(path), "%s/%s", dirname, entry->d_name);

            if (openJoystickDevice(path))
                count++;
        }

        closedir(dir);
    }



    qsort(_glfw.joysticks, count, sizeof(_GLFWjoystick), compareJoysticks);
    return GLFW_TRUE;
}
