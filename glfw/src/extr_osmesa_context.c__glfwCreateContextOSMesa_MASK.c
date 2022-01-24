#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_16__ {int /*<<< orphan*/  destroy; int /*<<< orphan*/  getProcAddress; int /*<<< orphan*/  extensionSupported; int /*<<< orphan*/  swapInterval; int /*<<< orphan*/  swapBuffers; int /*<<< orphan*/  makeCurrent; TYPE_4__ osmesa; } ;
struct TYPE_17__ {TYPE_5__ context; } ;
typedef  TYPE_6__ _GLFWwindow ;
struct TYPE_18__ {int accumRedBits; int accumGreenBits; int accumBlueBits; int accumAlphaBits; int const depthBits; int const stencilBits; } ;
typedef  TYPE_7__ _GLFWfbconfig ;
struct TYPE_19__ {scalar_t__ client; scalar_t__ profile; int major; int const minor; scalar_t__ forward; TYPE_3__* share; } ;
typedef  TYPE_8__ _GLFWctxconfig ;
struct TYPE_12__ {int /*<<< orphan*/ * handle; } ;
struct TYPE_13__ {TYPE_1__ osmesa; } ;
struct TYPE_14__ {TYPE_2__ context; } ;
typedef  int /*<<< orphan*/ * OSMesaContext ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ; 
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ; 
 scalar_t__ GLFW_OPENGL_ES_API ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 int /*<<< orphan*/  GLFW_VERSION_UNAVAILABLE ; 
 int /*<<< orphan*/  OSMESA_ACCUM_BITS ; 
 int const OSMESA_COMPAT_PROFILE ; 
 int /*<<< orphan*/  OSMESA_CONTEXT_MAJOR_VERSION ; 
 int /*<<< orphan*/  OSMESA_CONTEXT_MINOR_VERSION ; 
 int const OSMESA_CORE_PROFILE ; 
 int /*<<< orphan*/  OSMESA_DEPTH_BITS ; 
 int /*<<< orphan*/  OSMESA_FORMAT ; 
 int /*<<< orphan*/  OSMESA_PROFILE ; 
 int const OSMESA_RGBA ; 
 int /*<<< orphan*/  OSMESA_STENCIL_BITS ; 
 int /*<<< orphan*/ * FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int const,int const,int const,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  destroyContextOSMesa ; 
 int /*<<< orphan*/  extensionSupportedOSMesa ; 
 int /*<<< orphan*/  getProcAddressOSMesa ; 
 int /*<<< orphan*/  makeContextCurrentOSMesa ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  swapBuffersOSMesa ; 
 int /*<<< orphan*/  swapIntervalOSMesa ; 

GLFWbool FUNC4(_GLFWwindow* window,
                                  const _GLFWctxconfig* ctxconfig,
                                  const _GLFWfbconfig* fbconfig)
{
    OSMesaContext share = NULL;
    const int accumBits = fbconfig->accumRedBits +
                          fbconfig->accumGreenBits +
                          fbconfig->accumBlueBits +
                          fbconfig->accumAlphaBits;

    if (ctxconfig->client == GLFW_OPENGL_ES_API)
    {
        FUNC2(GLFW_API_UNAVAILABLE,
                        "OSMesa: OpenGL ES is not available on OSMesa");
        return GLFW_FALSE;
    }

    if (ctxconfig->share)
        share = ctxconfig->share->context.osmesa.handle;

    if (&OSMesaCreateContextAttribs)
    {
        int index = 0, attribs[40];

        FUNC3(OSMESA_FORMAT, OSMESA_RGBA);
        FUNC3(OSMESA_DEPTH_BITS, fbconfig->depthBits);
        FUNC3(OSMESA_STENCIL_BITS, fbconfig->stencilBits);
        FUNC3(OSMESA_ACCUM_BITS, accumBits);

        if (ctxconfig->profile == GLFW_OPENGL_CORE_PROFILE)
        {
            FUNC3(OSMESA_PROFILE, OSMESA_CORE_PROFILE);
        }
        else if (ctxconfig->profile == GLFW_OPENGL_COMPAT_PROFILE)
        {
            FUNC3(OSMESA_PROFILE, OSMESA_COMPAT_PROFILE);
        }

        if (ctxconfig->major != 1 || ctxconfig->minor != 0)
        {
            FUNC3(OSMESA_CONTEXT_MAJOR_VERSION, ctxconfig->major);
            FUNC3(OSMESA_CONTEXT_MINOR_VERSION, ctxconfig->minor);
        }

        if (ctxconfig->forward)
        {
            FUNC2(GLFW_VERSION_UNAVAILABLE,
                            "OSMesa: Forward-compatible contexts not supported");
            return GLFW_FALSE;
        }

        FUNC3(0, 0);

        window->context.osmesa.handle =
            FUNC0(attribs, share);
    }
    else
    {
        if (ctxconfig->profile)
        {
            FUNC2(GLFW_VERSION_UNAVAILABLE,
                            "OSMesa: OpenGL profiles unavailable");
            return GLFW_FALSE;
        }

        window->context.osmesa.handle =
            FUNC1(OSMESA_RGBA,
                                   fbconfig->depthBits,
                                   fbconfig->stencilBits,
                                   accumBits,
                                   share);
    }

    if (window->context.osmesa.handle == NULL)
    {
        FUNC2(GLFW_VERSION_UNAVAILABLE,
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