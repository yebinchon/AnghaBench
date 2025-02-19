
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int pfd ;
struct TYPE_21__ {int handle; int dc; } ;
struct TYPE_22__ {int destroy; int getProcAddress; int extensionSupported; int swapInterval; int swapBuffers; int makeCurrent; TYPE_6__ wgl; } ;
struct TYPE_19__ {int handle; } ;
struct TYPE_23__ {TYPE_7__ context; TYPE_4__ win32; } ;
typedef TYPE_8__ _GLFWwindow ;
typedef int _GLFWfbconfig ;
struct TYPE_24__ {scalar_t__ client; scalar_t__ profile; scalar_t__ robustness; scalar_t__ release; int major; int minor; scalar_t__ noerror; scalar_t__ debug; scalar_t__ forward; TYPE_3__* share; } ;
typedef TYPE_9__ _GLFWctxconfig ;
struct TYPE_20__ {scalar_t__ ARB_create_context_no_error; scalar_t__ ARB_context_flush_control; scalar_t__ ARB_create_context_robustness; scalar_t__ ARB_create_context; int EXT_create_context_es2_profile; int ARB_create_context_profile; } ;
struct TYPE_16__ {int * handle; } ;
struct TYPE_17__ {TYPE_1__ wgl; } ;
struct TYPE_18__ {TYPE_2__ context; } ;
struct TYPE_15__ {TYPE_5__ wgl; } ;
typedef int PIXELFORMATDESCRIPTOR ;
typedef int * HGLRC ;
typedef int GLFWbool ;
typedef int DWORD ;


 int DescribePixelFormat (int ,int,int,int *) ;
 int ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB ;
 int ERROR_INVALID_PROFILE_ARB ;
 int ERROR_INVALID_VERSION_ARB ;
 int GLFW_API_UNAVAILABLE ;
 int GLFW_FALSE ;
 int GLFW_INVALID_VALUE ;
 scalar_t__ GLFW_LOSE_CONTEXT_ON_RESET ;
 scalar_t__ GLFW_NO_RESET_NOTIFICATION ;
 scalar_t__ GLFW_OPENGL_API ;
 scalar_t__ GLFW_OPENGL_COMPAT_PROFILE ;
 scalar_t__ GLFW_OPENGL_CORE_PROFILE ;
 int GLFW_PLATFORM_ERROR ;
 scalar_t__ GLFW_RELEASE_BEHAVIOR_FLUSH ;
 scalar_t__ GLFW_RELEASE_BEHAVIOR_NONE ;
 int GLFW_TRUE ;
 int GLFW_VERSION_UNAVAILABLE ;
 int GetDC (int ) ;
 int GetLastError () ;
 int SetPixelFormat (int ,int,int *) ;
 int WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB ;
 int WGL_CONTEXT_CORE_PROFILE_BIT_ARB ;
 int WGL_CONTEXT_DEBUG_BIT_ARB ;
 int WGL_CONTEXT_ES2_PROFILE_BIT_EXT ;
 int WGL_CONTEXT_FLAGS_ARB ;
 int WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB ;
 int WGL_CONTEXT_MAJOR_VERSION_ARB ;
 int WGL_CONTEXT_MINOR_VERSION_ARB ;
 int WGL_CONTEXT_OPENGL_NO_ERROR_ARB ;
 int WGL_CONTEXT_PROFILE_MASK_ARB ;
 int WGL_CONTEXT_RELEASE_BEHAVIOR_ARB ;
 int WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB ;
 int WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB ;
 int WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB ;
 int WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB ;
 int WGL_LOSE_CONTEXT_ON_RESET_ARB ;
 int WGL_NO_RESET_NOTIFICATION_ARB ;
 TYPE_14__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 int _glfwInputErrorWin32 (int ,char*) ;
 int choosePixelFormat (TYPE_8__*,TYPE_9__ const*,int const*) ;
 int destroyContextWGL ;
 int extensionSupportedWGL ;
 int getProcAddressWGL ;
 int makeContextCurrentWGL ;
 int setAttrib (int ,int) ;
 int swapBuffersWGL ;
 int swapIntervalWGL ;
 int wglCreateContext (int ) ;
 int wglCreateContextAttribsARB (int ,int *,int*) ;
 int wglShareLists (int *,int ) ;

GLFWbool _glfwCreateContextWGL(_GLFWwindow* window,
                               const _GLFWctxconfig* ctxconfig,
                               const _GLFWfbconfig* fbconfig)
{
    int attribs[40];
    int pixelFormat;
    PIXELFORMATDESCRIPTOR pfd;
    HGLRC share = ((void*)0);

    if (ctxconfig->share)
        share = ctxconfig->share->context.wgl.handle;

    window->context.wgl.dc = GetDC(window->win32.handle);
    if (!window->context.wgl.dc)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "WGL: Failed to retrieve DC for window");
        return GLFW_FALSE;
    }

    pixelFormat = choosePixelFormat(window, ctxconfig, fbconfig);
    if (!pixelFormat)
        return GLFW_FALSE;

    if (!DescribePixelFormat(window->context.wgl.dc,
                             pixelFormat, sizeof(pfd), &pfd))
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "WGL: Failed to retrieve PFD for selected pixel format");
        return GLFW_FALSE;
    }

    if (!SetPixelFormat(window->context.wgl.dc, pixelFormat, &pfd))
    {
        _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                             "WGL: Failed to set selected pixel format");
        return GLFW_FALSE;
    }

    if (ctxconfig->client == GLFW_OPENGL_API)
    {
        if (ctxconfig->forward)
        {
            if (!_glfw.wgl.ARB_create_context)
            {
                _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                "WGL: A forward compatible OpenGL context requested but WGL_ARB_create_context is unavailable");
                return GLFW_FALSE;
            }
        }

        if (ctxconfig->profile)
        {
            if (!_glfw.wgl.ARB_create_context_profile)
            {
                _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                "WGL: OpenGL profile requested but WGL_ARB_create_context_profile is unavailable");
                return GLFW_FALSE;
            }
        }
    }
    else
    {
        if (!_glfw.wgl.ARB_create_context ||
            !_glfw.wgl.ARB_create_context_profile ||
            !_glfw.wgl.EXT_create_context_es2_profile)
        {
            _glfwInputError(GLFW_API_UNAVAILABLE,
                            "WGL: OpenGL ES requested but WGL_ARB_create_context_es2_profile is unavailable");
            return GLFW_FALSE;
        }
    }

    if (_glfw.wgl.ARB_create_context)
    {
        int index = 0, mask = 0, flags = 0;

        if (ctxconfig->client == GLFW_OPENGL_API)
        {
            if (ctxconfig->forward)
                flags |= WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB;

            if (ctxconfig->profile == GLFW_OPENGL_CORE_PROFILE)
                mask |= WGL_CONTEXT_CORE_PROFILE_BIT_ARB;
            else if (ctxconfig->profile == GLFW_OPENGL_COMPAT_PROFILE)
                mask |= WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB;
        }
        else
            mask |= WGL_CONTEXT_ES2_PROFILE_BIT_EXT;

        if (ctxconfig->debug)
            flags |= WGL_CONTEXT_DEBUG_BIT_ARB;

        if (ctxconfig->robustness)
        {
            if (_glfw.wgl.ARB_create_context_robustness)
            {
                if (ctxconfig->robustness == GLFW_NO_RESET_NOTIFICATION)
                {
                    setAttrib(WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB,
                              WGL_NO_RESET_NOTIFICATION_ARB);
                }
                else if (ctxconfig->robustness == GLFW_LOSE_CONTEXT_ON_RESET)
                {
                    setAttrib(WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB,
                              WGL_LOSE_CONTEXT_ON_RESET_ARB);
                }

                flags |= WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB;
            }
        }

        if (ctxconfig->release)
        {
            if (_glfw.wgl.ARB_context_flush_control)
            {
                if (ctxconfig->release == GLFW_RELEASE_BEHAVIOR_NONE)
                {
                    setAttrib(WGL_CONTEXT_RELEASE_BEHAVIOR_ARB,
                              WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB);
                }
                else if (ctxconfig->release == GLFW_RELEASE_BEHAVIOR_FLUSH)
                {
                    setAttrib(WGL_CONTEXT_RELEASE_BEHAVIOR_ARB,
                              WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB);
                }
            }
        }

        if (ctxconfig->noerror)
        {
            if (_glfw.wgl.ARB_create_context_no_error)
                setAttrib(WGL_CONTEXT_OPENGL_NO_ERROR_ARB, GLFW_TRUE);
        }




        if (ctxconfig->major != 1 || ctxconfig->minor != 0)
        {
            setAttrib(WGL_CONTEXT_MAJOR_VERSION_ARB, ctxconfig->major);
            setAttrib(WGL_CONTEXT_MINOR_VERSION_ARB, ctxconfig->minor);
        }

        if (flags)
            setAttrib(WGL_CONTEXT_FLAGS_ARB, flags);

        if (mask)
            setAttrib(WGL_CONTEXT_PROFILE_MASK_ARB, mask);

        setAttrib(0, 0);

        window->context.wgl.handle =
            wglCreateContextAttribsARB(window->context.wgl.dc, share, attribs);
        if (!window->context.wgl.handle)
        {
            const DWORD error = GetLastError();

            if (error == (0xc0070000 | ERROR_INVALID_VERSION_ARB))
            {
                if (ctxconfig->client == GLFW_OPENGL_API)
                {
                    _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                    "WGL: Driver does not support OpenGL version %i.%i",
                                    ctxconfig->major,
                                    ctxconfig->minor);
                }
                else
                {
                    _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                    "WGL: Driver does not support OpenGL ES version %i.%i",
                                    ctxconfig->major,
                                    ctxconfig->minor);
                }
            }
            else if (error == (0xc0070000 | ERROR_INVALID_PROFILE_ARB))
            {
                _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                "WGL: Driver does not support the requested OpenGL profile");
            }
            else if (error == (0xc0070000 | ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB))
            {
                _glfwInputError(GLFW_INVALID_VALUE,
                                "WGL: The share context is not compatible with the requested context");
            }
            else
            {
                if (ctxconfig->client == GLFW_OPENGL_API)
                {
                    _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                    "WGL: Failed to create OpenGL context");
                }
                else
                {
                    _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                                    "WGL: Failed to create OpenGL ES context");
                }
            }

            return GLFW_FALSE;
        }
    }
    else
    {
        window->context.wgl.handle = wglCreateContext(window->context.wgl.dc);
        if (!window->context.wgl.handle)
        {
            _glfwInputErrorWin32(GLFW_VERSION_UNAVAILABLE,
                                 "WGL: Failed to create OpenGL context");
            return GLFW_FALSE;
        }

        if (share)
        {
            if (!wglShareLists(share, window->context.wgl.handle))
            {
                _glfwInputErrorWin32(GLFW_PLATFORM_ERROR,
                                     "WGL: Failed to enable sharing with specified OpenGL context");
                return GLFW_FALSE;
            }
        }
    }

    window->context.makeCurrent = makeContextCurrentWGL;
    window->context.swapBuffers = swapBuffersWGL;
    window->context.swapInterval = swapIntervalWGL;
    window->context.extensionSupported = extensionSupportedWGL;
    window->context.getProcAddress = getProcAddressWGL;
    window->context.destroy = destroyContextWGL;

    return GLFW_TRUE;
}
