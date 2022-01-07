
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ GetProcAddress; scalar_t__ GetDepthBuffer; scalar_t__ GetColorBuffer; scalar_t__ MakeCurrent; scalar_t__ DestroyContext; scalar_t__ CreateContextExt; scalar_t__ handle; scalar_t__ CreateContextAttribs; } ;
struct TYPE_4__ {TYPE_1__ osmesa; } ;
typedef scalar_t__ PFN_OSMesaMakeCurrent ;
typedef scalar_t__ PFN_OSMesaGetProcAddress ;
typedef scalar_t__ PFN_OSMesaGetDepthBuffer ;
typedef scalar_t__ PFN_OSMesaGetColorBuffer ;
typedef scalar_t__ PFN_OSMesaDestroyContext ;
typedef scalar_t__ PFN_OSMesaCreateContextExt ;
typedef scalar_t__ PFN_OSMesaCreateContextAttribs ;
typedef int GLFWbool ;


 int GLFW_API_UNAVAILABLE ;
 int GLFW_FALSE ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 char* _GLFW_OSMESA_LIBRARY ;
 TYPE_2__ _glfw ;
 int _glfwInputError (int ,char*) ;
 int _glfwTerminateOSMesa () ;
 scalar_t__ _glfw_dlopen (char const*) ;
 scalar_t__ _glfw_dlsym (scalar_t__,char*) ;

GLFWbool _glfwInitOSMesa(void)
{
    int i;
    const char* sonames[] =
    {
        "libOSMesa.so.8",
        "libOSMesa.so.6",

        ((void*)0)
    };

    if (_glfw.osmesa.handle)
        return GLFW_TRUE;

    for (i = 0; sonames[i]; i++)
    {
        _glfw.osmesa.handle = _glfw_dlopen(sonames[i]);
        if (_glfw.osmesa.handle)
            break;
    }

    if (!_glfw.osmesa.handle)
    {
        _glfwInputError(GLFW_API_UNAVAILABLE, "OSMesa: Library not found");
        return GLFW_FALSE;
    }

    _glfw.osmesa.CreateContextExt = (PFN_OSMesaCreateContextExt)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaCreateContextExt");
    _glfw.osmesa.CreateContextAttribs = (PFN_OSMesaCreateContextAttribs)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaCreateContextAttribs");
    _glfw.osmesa.DestroyContext = (PFN_OSMesaDestroyContext)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaDestroyContext");
    _glfw.osmesa.MakeCurrent = (PFN_OSMesaMakeCurrent)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaMakeCurrent");
    _glfw.osmesa.GetColorBuffer = (PFN_OSMesaGetColorBuffer)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaGetColorBuffer");
    _glfw.osmesa.GetDepthBuffer = (PFN_OSMesaGetDepthBuffer)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaGetDepthBuffer");
    _glfw.osmesa.GetProcAddress = (PFN_OSMesaGetProcAddress)
        _glfw_dlsym(_glfw.osmesa.handle, "OSMesaGetProcAddress");

    if (!_glfw.osmesa.CreateContextExt ||
        !_glfw.osmesa.DestroyContext ||
        !_glfw.osmesa.MakeCurrent ||
        !_glfw.osmesa.GetColorBuffer ||
        !_glfw.osmesa.GetDepthBuffer ||
        !_glfw.osmesa.GetProcAddress)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR,
                        "OSMesa: Failed to load required entry points");

        _glfwTerminateOSMesa();
        return GLFW_FALSE;
    }

    return GLFW_TRUE;
}
