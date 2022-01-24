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
struct TYPE_3__ {scalar_t__ GetProcAddress; scalar_t__ GetDepthBuffer; scalar_t__ GetColorBuffer; scalar_t__ MakeCurrent; scalar_t__ DestroyContext; scalar_t__ CreateContextExt; scalar_t__ handle; scalar_t__ CreateContextAttribs; } ;
struct TYPE_4__ {TYPE_1__ osmesa; } ;
typedef  scalar_t__ PFN_OSMesaMakeCurrent ;
typedef  scalar_t__ PFN_OSMesaGetProcAddress ;
typedef  scalar_t__ PFN_OSMesaGetDepthBuffer ;
typedef  scalar_t__ PFN_OSMesaGetColorBuffer ;
typedef  scalar_t__ PFN_OSMesaDestroyContext ;
typedef  scalar_t__ PFN_OSMesaCreateContextExt ;
typedef  scalar_t__ PFN_OSMesaCreateContextAttribs ;
typedef  int /*<<< orphan*/  GLFWbool ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_API_UNAVAILABLE ; 
 int /*<<< orphan*/  GLFW_FALSE ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 int /*<<< orphan*/  GLFW_TRUE ; 
 char* _GLFW_OSMESA_LIBRARY ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 

GLFWbool FUNC4(void)
{
    int i;
    const char* sonames[] =
    {
#if defined(_GLFW_OSMESA_LIBRARY)
        _GLFW_OSMESA_LIBRARY,
#elif defined(_WIN32)
        "libOSMesa.dll",
        "OSMesa.dll",
#elif defined(__APPLE__)
        "libOSMesa.8.dylib",
#elif defined(__CYGWIN__)
        "libOSMesa-8.so",
#else
        "libOSMesa.so.8",
        "libOSMesa.so.6",
#endif
        NULL
    };

    if (_glfw.osmesa.handle)
        return GLFW_TRUE;

    for (i = 0;  sonames[i];  i++)
    {
        _glfw.osmesa.handle = FUNC2(sonames[i]);
        if (_glfw.osmesa.handle)
            break;
    }

    if (!_glfw.osmesa.handle)
    {
        FUNC0(GLFW_API_UNAVAILABLE, "OSMesa: Library not found");
        return GLFW_FALSE;
    }

    _glfw.osmesa.CreateContextExt = (PFN_OSMesaCreateContextExt)
        FUNC3(_glfw.osmesa.handle, "OSMesaCreateContextExt");
    _glfw.osmesa.CreateContextAttribs = (PFN_OSMesaCreateContextAttribs)
        FUNC3(_glfw.osmesa.handle, "OSMesaCreateContextAttribs");
    _glfw.osmesa.DestroyContext = (PFN_OSMesaDestroyContext)
        FUNC3(_glfw.osmesa.handle, "OSMesaDestroyContext");
    _glfw.osmesa.MakeCurrent = (PFN_OSMesaMakeCurrent)
        FUNC3(_glfw.osmesa.handle, "OSMesaMakeCurrent");
    _glfw.osmesa.GetColorBuffer = (PFN_OSMesaGetColorBuffer)
        FUNC3(_glfw.osmesa.handle, "OSMesaGetColorBuffer");
    _glfw.osmesa.GetDepthBuffer = (PFN_OSMesaGetDepthBuffer)
        FUNC3(_glfw.osmesa.handle, "OSMesaGetDepthBuffer");
    _glfw.osmesa.GetProcAddress = (PFN_OSMesaGetProcAddress)
        FUNC3(_glfw.osmesa.handle, "OSMesaGetProcAddress");

    if (!_glfw.osmesa.CreateContextExt ||
        !_glfw.osmesa.DestroyContext ||
        !_glfw.osmesa.MakeCurrent ||
        !_glfw.osmesa.GetColorBuffer ||
        !_glfw.osmesa.GetDepthBuffer ||
        !_glfw.osmesa.GetProcAddress)
    {
        FUNC0(GLFW_PLATFORM_ERROR,
                        "OSMesa: Failed to load required entry points");

        FUNC1();
        return GLFW_FALSE;
    }

    return GLFW_TRUE;
}