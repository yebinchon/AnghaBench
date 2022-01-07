
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* retina; } ;
struct TYPE_7__ {int major; int redBits; int greenBits; int blueBits; int alphaBits; int depthBits; int stencilBits; TYPE_1__ ns; void* doublebuffer; void* focusOnShow; void* centerCursor; void* autoIconify; void* focused; void* decorated; void* visible; void* resizable; scalar_t__ minor; int source; int client; } ;
struct TYPE_6__ {TYPE_3__ window; int refreshRate; TYPE_3__ framebuffer; TYPE_3__ context; } ;
struct TYPE_8__ {TYPE_2__ hints; } ;


 int GLFW_DONT_CARE ;
 int GLFW_NATIVE_CONTEXT_API ;
 int GLFW_OPENGL_API ;
 void* GLFW_TRUE ;
 int _GLFW_REQUIRE_INIT () ;
 TYPE_4__ _glfw ;
 int memset (TYPE_3__*,int ,int) ;

void glfwDefaultWindowHints(void)
{
    _GLFW_REQUIRE_INIT();


    memset(&_glfw.hints.context, 0, sizeof(_glfw.hints.context));
    _glfw.hints.context.client = GLFW_OPENGL_API;
    _glfw.hints.context.source = GLFW_NATIVE_CONTEXT_API;
    _glfw.hints.context.major = 1;
    _glfw.hints.context.minor = 0;


    memset(&_glfw.hints.window, 0, sizeof(_glfw.hints.window));
    _glfw.hints.window.resizable = GLFW_TRUE;
    _glfw.hints.window.visible = GLFW_TRUE;
    _glfw.hints.window.decorated = GLFW_TRUE;
    _glfw.hints.window.focused = GLFW_TRUE;
    _glfw.hints.window.autoIconify = GLFW_TRUE;
    _glfw.hints.window.centerCursor = GLFW_TRUE;
    _glfw.hints.window.focusOnShow = GLFW_TRUE;



    memset(&_glfw.hints.framebuffer, 0, sizeof(_glfw.hints.framebuffer));
    _glfw.hints.framebuffer.redBits = 8;
    _glfw.hints.framebuffer.greenBits = 8;
    _glfw.hints.framebuffer.blueBits = 8;
    _glfw.hints.framebuffer.alphaBits = 8;
    _glfw.hints.framebuffer.depthBits = 24;
    _glfw.hints.framebuffer.stencilBits = 8;
    _glfw.hints.framebuffer.doublebuffer = GLFW_TRUE;


    _glfw.hints.refreshRate = GLFW_DONT_CARE;


    _glfw.hints.window.ns.retina = GLFW_TRUE;
}
