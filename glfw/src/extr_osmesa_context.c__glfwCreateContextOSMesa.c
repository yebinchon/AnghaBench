
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * handle; } ;
struct TYPE_16__ {int destroy; int getProcAddress; int extensionSupported; int swapInterval; int swapBuffers; int makeCurrent; TYPE_4__ osmesa; } ;
struct TYPE_17__ {TYPE_5__ context; } ;
typedef TYPE_6__ _GLFWwindow ;
struct TYPE_18__ {int accumRedBits; int accumGreenBits; int accumBlueBits; int accumAlphaBits; int const depthBits; int const stencilBits; } ;
typedef TYPE_7__ _GLFWfbconfig ;
struct TYPE_19__ {scalar_t__ client; scalar_t__ profile; int major; int const minor; scalar_t__ forward; TYPE_3__* share; } ;
typedef TYPE_8__ _GLFWctxconfig ;
struct TYPE_12__ {int * handle; } ;
struct TYPE_13__ {TYPE_1__ osmesa; } ;
struct TYPE_14__ {TYPE_2__ context; } ;
typedef int * OSMesaContext ;
typedef int GLFWbool ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_FALSE ;
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ;
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ;
 scalar_t__ GLFW_OPENGL_ES_API ;
 int GLFW_TRUE ;
 int GLFW_VERSION_UNAVAILABLE ;
 int OSMESA_ACCUM_BITS ;
 int const OSMESA_COMPAT_PROFILE ;
 int OSMESA_CONTEXT_MAJOR_VERSION ;
 int OSMESA_CONTEXT_MINOR_VERSION ;
 int const OSMESA_CORE_PROFILE ;
 int OSMESA_DEPTH_BITS ;
 int OSMESA_FORMAT ;
 int OSMESA_PROFILE ;
 int const OSMESA_RGBA ;
 int OSMESA_STENCIL_BITS ;
 int * OSMesaCreateContextAttribs (int*,int *) ;
 int * OSMesaCreateContextExt (int const,int const,int const,int const,int *) ;
 int _glfwInputError (int ,char*) ;
 int destroyContextOSMesa ;
 int extensionSupportedOSMesa ;
 int getProcAddressOSMesa ;
 int makeContextCurrentOSMesa ;
 int setAttrib (int ,int const) ;
 int swapBuffersOSMesa ;
 int swapIntervalOSMesa ;

GLFWbool _glfwCreateContextOSMesa(_GLFWwindow* window,
                                  const _GLFWctxconfig* ctxconfig,
                                  const _GLFWfbconfig* fbconfig)
{
    OSMesaContext share = ((void*)0);
    const int accumBits = fbconfig->accumRedBits +
                          fbconfig->accumGreenBits +
                          fbconfig->accumBlueBits +
                          fbconfig->accumAlphaBits;

    if (ctxconfig->client == GLFW_OPENGL_ES_API)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE,
                        "OSMesa: OpenGL ES is not available on OSMesa");
        return GLFW_FALSE;
    }

    if (ctxconfig->share)
        share = ctxconfig->share->context.osmesa.handle;

    if (OSMesaCreateContextAttribs)
    {
        int index = 0, attribs[40];

        setAttrib(OSMESA_FORMAT, OSMESA_RGBA);
        setAttrib(OSMESA_DEPTH_BITS, fbconfig->depthBits);
        setAttrib(OSMESA_STENCIL_BITS, fbconfig->stencilBits);
        setAttrib(OSMESA_ACCUM_BITS, accumBits);

        if (ctxconfig->profile == GLFW_OPENGL_CORE_PROFILE)
        {
            setAttrib(OSMESA_PROFILE, OSMESA_CORE_PROFILE);
        }
        else if (ctxconfig->profile == GLFW_OPENGL_COMPAT_PROFILE)
        {
            setAttrib(OSMESA_PROFILE, OSMESA_COMPAT_PROFILE);
        }

        if (ctxconfig->major != 1 || ctxconfig->minor != 0)
        {
            setAttrib(OSMESA_CONTEXT_MAJOR_VERSION, ctxconfig->major);
            setAttrib(OSMESA_CONTEXT_MINOR_VERSION, ctxconfig->minor);
        }

        if (ctxconfig->forward)
        {
            _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                            "OSMesa: Forward-compatible contexts not supported");
            return GLFW_FALSE;
        }

        setAttrib(0, 0);

        window->context.osmesa.handle =
            OSMesaCreateContextAttribs(attribs, share);
    }
    else
    {
        if (ctxconfig->profile)
        {
            _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                            "OSMesa: OpenGL profiles unavailable");
            return GLFW_FALSE;
        }

        window->context.osmesa.handle =
            OSMesaCreateContextExt(OSMESA_RGBA,
                                   fbconfig->depthBits,
                                   fbconfig->stencilBits,
                                   accumBits,
                                   share);
    }

    if (window->context.osmesa.handle == ((void*)0))
    {
        _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                        "OSMesa: Failed to create context");
        return GLFW_FALSE;
    }

    window->context.makeCurrent = makeContextCurrentOSMesa;
    window->context.swapBuffers = swapBuffersOSMesa;
    window->context.swapInterval = swapIntervalOSMesa;
    window->context.extensionSupported = extensionSupportedOSMesa;
    window->context.getProcAddress = getProcAddressOSMesa;
    window->context.destroy = destroyContextOSMesa;

    return GLFW_TRUE;
}
