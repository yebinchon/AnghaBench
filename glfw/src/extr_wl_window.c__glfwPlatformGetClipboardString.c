
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t clipboardSize; char* clipboardString; int dataOffer; } ;
struct TYPE_4__ {TYPE_1__ wl; } ;


 scalar_t__ EINTR ;
 int GLFW_FORMAT_UNAVAILABLE ;
 int GLFW_PLATFORM_ERROR ;
 int O_CLOEXEC ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int close (int) ;
 scalar_t__ errno ;
 int growClipboardString () ;
 int handleEvents (int) ;
 int pipe2 (int*,int ) ;
 int read (int,char*,int) ;
 int wl_data_offer_receive (int ,char*,int) ;

const char* _glfwPlatformGetClipboardString(void)
{
    int fds[2];
    int ret;
    size_t len = 0;

    if (!_glfw.wl.dataOffer)
    {
        _glfwInputError(GLFW_FORMAT_UNAVAILABLE,
                        "No clipboard data has been sent yet");
        return ((void*)0);
    }

    ret = pipe2(fds, O_CLOEXEC);
    if (ret < 0)
    {

        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "Wayland: Impossible to create clipboard pipe fds");
        return ((void*)0);
    }

    wl_data_offer_receive(_glfw.wl.dataOffer, "text/plain;charset=utf-8", fds[1]);
    close(fds[1]);


    handleEvents(-1);

    while (1)
    {


        if (len + 4096 > _glfw.wl.clipboardSize)
        {
            if (!growClipboardString())
            {
                close(fds[0]);
                return ((void*)0);
            }
        }


        ret = read(fds[0], _glfw.wl.clipboardString + len, 4096);
        if (ret == 0)
            break;
        if (ret == -1 && errno == EINTR)
            continue;
        if (ret == -1)
        {

            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Wayland: Impossible to read from clipboard fd");
            close(fds[0]);
            return ((void*)0);
        }
        len += ret;
    }
    close(fds[0]);
    if (len + 1 > _glfw.wl.clipboardSize)
    {
        if (!growClipboardString())
            return ((void*)0);
    }
    _glfw.wl.clipboardString[len] = '\0';
    return _glfw.wl.clipboardString;
}
