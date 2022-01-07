
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {void* offline; } ;
struct TYPE_14__ {int client; int source; int major; int minor; int robustness; int profile; int release; void* noerror; void* debug; void* forward; TYPE_4__ nsgl; } ;
struct TYPE_11__ {void* keymenu; } ;
struct TYPE_10__ {void* retina; } ;
struct TYPE_13__ {void* focusOnShow; void* centerCursor; void* scaleToMonitor; TYPE_3__ win32; TYPE_2__ ns; void* visible; void* maximized; void* floating; void* autoIconify; void* focused; void* decorated; void* resizable; } ;
struct TYPE_9__ {int redBits; int greenBits; int blueBits; int alphaBits; int depthBits; int stencilBits; int accumRedBits; int accumGreenBits; int accumBlueBits; int accumAlphaBits; int auxBuffers; int samples; void* sRGB; void* transparent; void* doublebuffer; void* stereo; } ;
struct TYPE_15__ {int refreshRate; TYPE_6__ context; TYPE_5__ window; TYPE_1__ framebuffer; } ;
struct TYPE_16__ {TYPE_7__ hints; } ;
 void* GLFW_FALSE ;




 int GLFW_INVALID_ENUM ;
 void* GLFW_TRUE ;


 int _GLFW_REQUIRE_INIT () ;
 TYPE_8__ _glfw ;
 int _glfwInputError (int ,char*,int) ;

void glfwWindowHint(int hint, int value)
{
    _GLFW_REQUIRE_INIT();

    switch (hint)
    {
        case 138:
            _glfw.hints.framebuffer.redBits = value;
            return;
        case 143:
            _glfw.hints.framebuffer.greenBits = value;
            return;
        case 160:
            _glfw.hints.framebuffer.blueBits = value;
            return;
        case 163:
            _glfw.hints.framebuffer.alphaBits = value;
            return;
        case 148:
            _glfw.hints.framebuffer.depthBits = value;
            return;
        case 132:
            _glfw.hints.framebuffer.stencilBits = value;
            return;
        case 164:
            _glfw.hints.framebuffer.accumRedBits = value;
            return;
        case 165:
            _glfw.hints.framebuffer.accumGreenBits = value;
            return;
        case 166:
            _glfw.hints.framebuffer.accumBlueBits = value;
            return;
        case 167:
            _glfw.hints.framebuffer.accumAlphaBits = value;
            return;
        case 161:
            _glfw.hints.framebuffer.auxBuffers = value;
            return;
        case 131:
            _glfw.hints.framebuffer.stereo = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 147:
            _glfw.hints.framebuffer.doublebuffer = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 130:
            _glfw.hints.framebuffer.transparent = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 135:
            _glfw.hints.framebuffer.samples = value;
            return;
        case 133:
            _glfw.hints.framebuffer.sRGB = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 136:
            _glfw.hints.window.resizable = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 149:
            _glfw.hints.window.decorated = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 145:
            _glfw.hints.window.focused = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 162:
            _glfw.hints.window.autoIconify = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 146:
            _glfw.hints.window.floating = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 142:
            _glfw.hints.window.maximized = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 129:
            _glfw.hints.window.visible = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 156:
            _glfw.hints.window.ns.retina = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 128:
            _glfw.hints.window.win32.keymenu = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 157:
            _glfw.hints.context.nsgl.offline = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 134:
            _glfw.hints.window.scaleToMonitor = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 159:
            _glfw.hints.window.centerCursor = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 144:
            _glfw.hints.window.focusOnShow = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 158:
            _glfw.hints.context.client = value;
            return;
        case 155:
            _glfw.hints.context.source = value;
            return;
        case 151:
            _glfw.hints.context.major = value;
            return;
        case 150:
            _glfw.hints.context.minor = value;
            return;
        case 152:
            _glfw.hints.context.robustness = value;
            return;
        case 140:
            _glfw.hints.context.forward = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 141:
            _glfw.hints.context.debug = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 154:
            _glfw.hints.context.noerror = value ? GLFW_TRUE : GLFW_FALSE;
            return;
        case 139:
            _glfw.hints.context.profile = value;
            return;
        case 153:
            _glfw.hints.context.release = value;
            return;
        case 137:
            _glfw.hints.refreshRate = value;
            return;
    }

    _glfwInputError(GLFW_INVALID_ENUM, "Invalid window hint 0x%08X", hint);
}
