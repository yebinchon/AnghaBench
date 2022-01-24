#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int major; int minor; void* ARB_context_flush_control; void* ARB_create_context_no_error; void* EXT_create_context_es2_profile; void* ARB_create_context_profile; void* ARB_create_context_robustness; void* ARB_create_context; scalar_t__ CreateContextAttribsARB; void* EXT_framebuffer_sRGB; void* ARB_framebuffer_sRGB; void* ARB_multisample; void* MESA_swap_control; scalar_t__ SwapIntervalMESA; void* SGI_swap_control; scalar_t__ SwapIntervalSGI; void* EXT_swap_control; scalar_t__ SwapIntervalEXT; int /*<<< orphan*/  eventBase; int /*<<< orphan*/  errorBase; void* GetVisualFromFBConfig; void* GetProcAddressARB; void* GetProcAddress; void* DestroyWindow; void* CreateWindow; void* CreateNewContext; void* QueryExtensionsString; void* SwapBuffers; void* MakeCurrent; void* DestroyContext; void* QueryVersion; void* QueryExtension; void* GetClientString; void* GetFBConfigAttrib; void* GetFBConfigs; scalar_t__ handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  display; } ;
struct TYPE_6__ {TYPE_2__ glx; TYPE_1__ x11; } ;
typedef  scalar_t__ PFNGLXSWAPINTERVALSGIPROC ;
typedef  scalar_t__ PFNGLXSWAPINTERVALMESAPROC ;
typedef  scalar_t__ PFNGLXSWAPINTERVALEXTPROC ;
typedef  scalar_t__ PFNGLXCREATECONTEXTATTRIBSARBPROC ;
typedef  void* GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 void* GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 void* GLFW_TRUE ; 
 char* _GLFW_GLX_LIBRARY ; 
 TYPE_3__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 void* FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 

GLFWbool FUNC7(void)
{
    int i;
    const char* sonames[] =
    {
#if defined(_GLFW_GLX_LIBRARY)
        _GLFW_GLX_LIBRARY,
#elif defined(__CYGWIN__)
        "libGL-1.so",
#else
        "libGL.so.1",
        "libGL.so",
#endif
        NULL
    };

    if (_glfw.glx.handle)
        return GLFW_TRUE;

    for (i = 0;  sonames[i];  i++)
    {
        _glfw.glx.handle = FUNC1(sonames[i]);
        if (_glfw.glx.handle)
            break;
    }

    if (!_glfw.glx.handle)
    {
        FUNC0(GLFW_API_UNAVAILABLE, "GLX: Failed to load GLX");
        return GLFW_FALSE;
    }

    _glfw.glx.GetFBConfigs =
        FUNC2(_glfw.glx.handle, "glXGetFBConfigs");
    _glfw.glx.GetFBConfigAttrib =
        FUNC2(_glfw.glx.handle, "glXGetFBConfigAttrib");
    _glfw.glx.GetClientString =
        FUNC2(_glfw.glx.handle, "glXGetClientString");
    _glfw.glx.QueryExtension =
        FUNC2(_glfw.glx.handle, "glXQueryExtension");
    _glfw.glx.QueryVersion =
        FUNC2(_glfw.glx.handle, "glXQueryVersion");
    _glfw.glx.DestroyContext =
        FUNC2(_glfw.glx.handle, "glXDestroyContext");
    _glfw.glx.MakeCurrent =
        FUNC2(_glfw.glx.handle, "glXMakeCurrent");
    _glfw.glx.SwapBuffers =
        FUNC2(_glfw.glx.handle, "glXSwapBuffers");
    _glfw.glx.QueryExtensionsString =
        FUNC2(_glfw.glx.handle, "glXQueryExtensionsString");
    _glfw.glx.CreateNewContext =
        FUNC2(_glfw.glx.handle, "glXCreateNewContext");
    _glfw.glx.CreateWindow =
        FUNC2(_glfw.glx.handle, "glXCreateWindow");
    _glfw.glx.DestroyWindow =
        FUNC2(_glfw.glx.handle, "glXDestroyWindow");
    _glfw.glx.GetProcAddress =
        FUNC2(_glfw.glx.handle, "glXGetProcAddress");
    _glfw.glx.GetProcAddressARB =
        FUNC2(_glfw.glx.handle, "glXGetProcAddressARB");
    _glfw.glx.GetVisualFromFBConfig =
        FUNC2(_glfw.glx.handle, "glXGetVisualFromFBConfig");

    if (!_glfw.glx.GetFBConfigs ||
        !_glfw.glx.GetFBConfigAttrib ||
        !_glfw.glx.GetClientString ||
        !_glfw.glx.QueryExtension ||
        !_glfw.glx.QueryVersion ||
        !_glfw.glx.DestroyContext ||
        !_glfw.glx.MakeCurrent ||
        !_glfw.glx.SwapBuffers ||
        !_glfw.glx.QueryExtensionsString ||
        !_glfw.glx.CreateNewContext ||
        !_glfw.glx.CreateWindow ||
        !_glfw.glx.DestroyWindow ||
        !_glfw.glx.GetProcAddress ||
        !_glfw.glx.GetProcAddressARB ||
        !_glfw.glx.GetVisualFromFBConfig)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "GLX: Failed to load required entry points");
        return GLFW_FALSE;
    }

    if (!FUNC5(_glfw.x11.display,
                           &_glfw.glx.errorBase,
                           &_glfw.glx.eventBase))
    {
        FUNC0(GLFW_API_UNAVAILABLE, "GLX: GLX extension not found");
        return GLFW_FALSE;
    }

    if (!FUNC6(_glfw.x11.display, &_glfw.glx.major, &_glfw.glx.minor))
    {
        FUNC0(GLFW_API_UNAVAILABLE,
                        "GLX: Failed to query GLX version");
        return GLFW_FALSE;
    }

    if (_glfw.glx.major == 1 && _glfw.glx.minor < 3)
    {
        FUNC0(GLFW_API_UNAVAILABLE,
                        "GLX: GLX version 1.3 is required");
        return GLFW_FALSE;
    }

    if (FUNC3("GLX_EXT_swap_control"))
    {
        _glfw.glx.SwapIntervalEXT = (PFNGLXSWAPINTERVALEXTPROC)
            FUNC4("glXSwapIntervalEXT");

        if (_glfw.glx.SwapIntervalEXT)
            _glfw.glx.EXT_swap_control = GLFW_TRUE;
    }

    if (FUNC3("GLX_SGI_swap_control"))
    {
        _glfw.glx.SwapIntervalSGI = (PFNGLXSWAPINTERVALSGIPROC)
            FUNC4("glXSwapIntervalSGI");

        if (_glfw.glx.SwapIntervalSGI)
            _glfw.glx.SGI_swap_control = GLFW_TRUE;
    }

    if (FUNC3("GLX_MESA_swap_control"))
    {
        _glfw.glx.SwapIntervalMESA = (PFNGLXSWAPINTERVALMESAPROC)
            FUNC4("glXSwapIntervalMESA");

        if (_glfw.glx.SwapIntervalMESA)
            _glfw.glx.MESA_swap_control = GLFW_TRUE;
    }

    if (FUNC3("GLX_ARB_multisample"))
        _glfw.glx.ARB_multisample = GLFW_TRUE;

    if (FUNC3("GLX_ARB_framebuffer_sRGB"))
        _glfw.glx.ARB_framebuffer_sRGB = GLFW_TRUE;

    if (FUNC3("GLX_EXT_framebuffer_sRGB"))
        _glfw.glx.EXT_framebuffer_sRGB = GLFW_TRUE;

    if (FUNC3("GLX_ARB_create_context"))
    {
        _glfw.glx.CreateContextAttribsARB = (PFNGLXCREATECONTEXTATTRIBSARBPROC)
            FUNC4("glXCreateContextAttribsARB");

        if (_glfw.glx.CreateContextAttribsARB)
            _glfw.glx.ARB_create_context = GLFW_TRUE;
    }

    if (FUNC3("GLX_ARB_create_context_robustness"))
        _glfw.glx.ARB_create_context_robustness = GLFW_TRUE;

    if (FUNC3("GLX_ARB_create_context_profile"))
        _glfw.glx.ARB_create_context_profile = GLFW_TRUE;

    if (FUNC3("GLX_EXT_create_context_es2_profile"))
        _glfw.glx.EXT_create_context_es2_profile = GLFW_TRUE;

    if (FUNC3("GLX_ARB_create_context_no_error"))
        _glfw.glx.ARB_create_context_no_error = GLFW_TRUE;

    if (FUNC3("GLX_ARB_context_flush_control"))
        _glfw.glx.ARB_context_flush_control = GLFW_TRUE;

    return GLFW_TRUE;
}