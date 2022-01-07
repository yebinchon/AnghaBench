
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ client; int major; int minor; int (* swapBuffers ) (TYPE_2__*) ;scalar_t__ (* getProcAddress ) (char*) ;int release; int (* GetIntegerv ) (int ,int*) ;void* robustness; void* profile; void* noerror; void* debug; void* forward; scalar_t__ GetStringi; int revision; scalar_t__ (* GetString ) (int ) ;int source; } ;
struct TYPE_10__ {TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_11__ {scalar_t__ client; int major; int minor; scalar_t__ debug; int source; } ;
typedef TYPE_3__ _GLFWctxconfig ;
struct TYPE_12__ {int contextSlot; } ;
typedef scalar_t__ (* PFNGLGETSTRINGPROC ) (int ) ;
typedef scalar_t__ PFNGLGETSTRINGIPROC ;
typedef int (* PFNGLGETINTEGERVPROC ) (int ,int*) ;
typedef int (* PFNGLCLEARPROC ) (int ) ;
typedef int GLint ;
typedef int GLFWwindow ;
typedef void* GLFWbool ;


 void* GLFW_FALSE ;
 void* GLFW_LOSE_CONTEXT_ON_RESET ;
 void* GLFW_NO_RESET_NOTIFICATION ;
 scalar_t__ GLFW_OPENGL_API ;
 void* GLFW_OPENGL_COMPAT_PROFILE ;
 void* GLFW_OPENGL_CORE_PROFILE ;
 scalar_t__ GLFW_OPENGL_ES_API ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_RELEASE_BEHAVIOR_FLUSH ;
 int GLFW_RELEASE_BEHAVIOR_NONE ;
 void* GLFW_TRUE ;
 int GLFW_VERSION_UNAVAILABLE ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_CONTEXT_COMPATIBILITY_PROFILE_BIT ;
 int GL_CONTEXT_CORE_PROFILE_BIT ;
 int GL_CONTEXT_FLAGS ;
 int GL_CONTEXT_FLAG_DEBUG_BIT ;
 int GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT ;
 int GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR ;
 int GL_CONTEXT_PROFILE_MASK ;
 int GL_CONTEXT_RELEASE_BEHAVIOR ;
 int GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH ;
 int GL_LOSE_CONTEXT_ON_RESET_ARB ;
 int GL_NONE ;
 int GL_NO_RESET_NOTIFICATION_ARB ;
 int GL_RESET_NOTIFICATION_STRATEGY_ARB ;
 int GL_VERSION ;
 TYPE_8__ _glfw ;
 int _glfwInputError (int ,char*,...) ;
 TYPE_2__* _glfwPlatformGetTls (int *) ;
 scalar_t__ glfwExtensionSupported (char*) ;
 int glfwMakeContextCurrent (int *) ;
 int sscanf (char const*,char*,int*,int*,int *) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t const) ;
 scalar_t__ stub1 (char*) ;
 scalar_t__ stub10 (char*) ;
 int stub11 (TYPE_2__*) ;
 scalar_t__ stub2 (char*) ;
 scalar_t__ stub3 (int ) ;
 scalar_t__ stub4 (char*) ;
 int stub5 (int ,int*) ;
 int stub6 (int ,int*) ;
 int stub7 (int ,int*) ;
 int stub8 (int ,int*) ;
 int stub9 (int ,int*) ;

GLFWbool _glfwRefreshContextAttribs(_GLFWwindow* window,
                                    const _GLFWctxconfig* ctxconfig)
{
    int i;
    _GLFWwindow* previous;
    const char* version;
    const char* prefixes[] =
    {
        "OpenGL ES-CM ",
        "OpenGL ES-CL ",
        "OpenGL ES ",
        ((void*)0)
    };

    window->context.source = ctxconfig->source;
    window->context.client = GLFW_OPENGL_API;

    previous = _glfwPlatformGetTls(&_glfw.contextSlot);
    glfwMakeContextCurrent((GLFWwindow*) window);

    window->context.GetIntegerv = (PFNGLGETINTEGERVPROC)
        window->context.getProcAddress("glGetIntegerv");
    window->context.GetString = (PFNGLGETSTRINGPROC)
        window->context.getProcAddress("glGetString");
    if (!window->context.GetIntegerv || !window->context.GetString)
    {
        _glfwInputError(GLFW_PLATFORM_ERROR, "Entry point retrieval is broken");
        glfwMakeContextCurrent((GLFWwindow*) previous);
        return GLFW_FALSE;
    }

    version = (const char*) window->context.GetString(GL_VERSION);
    if (!version)
    {
        if (ctxconfig->client == GLFW_OPENGL_API)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "OpenGL version string retrieval is broken");
        }
        else
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "OpenGL ES version string retrieval is broken");
        }

        glfwMakeContextCurrent((GLFWwindow*) previous);
        return GLFW_FALSE;
    }

    for (i = 0; prefixes[i]; i++)
    {
        const size_t length = strlen(prefixes[i]);

        if (strncmp(version, prefixes[i], length) == 0)
        {
            version += length;
            window->context.client = GLFW_OPENGL_ES_API;
            break;
        }
    }

    if (!sscanf(version, "%d.%d.%d",
                &window->context.major,
                &window->context.minor,
                &window->context.revision))
    {
        if (window->context.client == GLFW_OPENGL_API)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "No version found in OpenGL version string");
        }
        else
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "No version found in OpenGL ES version string");
        }

        glfwMakeContextCurrent((GLFWwindow*) previous);
        return GLFW_FALSE;
    }

    if (window->context.major < ctxconfig->major ||
        (window->context.major == ctxconfig->major &&
         window->context.minor < ctxconfig->minor))
    {







        if (window->context.client == GLFW_OPENGL_API)
        {
            _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                            "Requested OpenGL version %i.%i, got version %i.%i",
                            ctxconfig->major, ctxconfig->minor,
                            window->context.major, window->context.minor);
        }
        else
        {
            _glfwInputError(GLFW_VERSION_UNAVAILABLE,
                            "Requested OpenGL ES version %i.%i, got version %i.%i",
                            ctxconfig->major, ctxconfig->minor,
                            window->context.major, window->context.minor);
        }

        glfwMakeContextCurrent((GLFWwindow*) previous);
        return GLFW_FALSE;
    }

    if (window->context.major >= 3)
    {




        window->context.GetStringi = (PFNGLGETSTRINGIPROC)
            window->context.getProcAddress("glGetStringi");
        if (!window->context.GetStringi)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Entry point retrieval is broken");
            glfwMakeContextCurrent((GLFWwindow*) previous);
            return GLFW_FALSE;
        }
    }

    if (window->context.client == GLFW_OPENGL_API)
    {

        if (window->context.major >= 3)
        {
            GLint flags;
            window->context.GetIntegerv(GL_CONTEXT_FLAGS, &flags);

            if (flags & GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT)
                window->context.forward = GLFW_TRUE;

            if (flags & GL_CONTEXT_FLAG_DEBUG_BIT)
                window->context.debug = GLFW_TRUE;
            else if (glfwExtensionSupported("GL_ARB_debug_output") &&
                     ctxconfig->debug)
            {



                window->context.debug = GLFW_TRUE;
            }

            if (flags & GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR)
                window->context.noerror = GLFW_TRUE;
        }


        if (window->context.major >= 4 ||
            (window->context.major == 3 && window->context.minor >= 2))
        {
            GLint mask;
            window->context.GetIntegerv(GL_CONTEXT_PROFILE_MASK, &mask);

            if (mask & GL_CONTEXT_COMPATIBILITY_PROFILE_BIT)
                window->context.profile = GLFW_OPENGL_COMPAT_PROFILE;
            else if (mask & GL_CONTEXT_CORE_PROFILE_BIT)
                window->context.profile = GLFW_OPENGL_CORE_PROFILE;
            else if (glfwExtensionSupported("GL_ARB_compatibility"))
            {




                window->context.profile = GLFW_OPENGL_COMPAT_PROFILE;
            }
        }


        if (glfwExtensionSupported("GL_ARB_robustness"))
        {



            GLint strategy;
            window->context.GetIntegerv(GL_RESET_NOTIFICATION_STRATEGY_ARB,
                                        &strategy);

            if (strategy == GL_LOSE_CONTEXT_ON_RESET_ARB)
                window->context.robustness = GLFW_LOSE_CONTEXT_ON_RESET;
            else if (strategy == GL_NO_RESET_NOTIFICATION_ARB)
                window->context.robustness = GLFW_NO_RESET_NOTIFICATION;
        }
    }
    else
    {

        if (glfwExtensionSupported("GL_EXT_robustness"))
        {



            GLint strategy;
            window->context.GetIntegerv(GL_RESET_NOTIFICATION_STRATEGY_ARB,
                                        &strategy);

            if (strategy == GL_LOSE_CONTEXT_ON_RESET_ARB)
                window->context.robustness = GLFW_LOSE_CONTEXT_ON_RESET;
            else if (strategy == GL_NO_RESET_NOTIFICATION_ARB)
                window->context.robustness = GLFW_NO_RESET_NOTIFICATION;
        }
    }

    if (glfwExtensionSupported("GL_KHR_context_flush_control"))
    {
        GLint behavior;
        window->context.GetIntegerv(GL_CONTEXT_RELEASE_BEHAVIOR, &behavior);

        if (behavior == GL_NONE)
            window->context.release = GLFW_RELEASE_BEHAVIOR_NONE;
        else if (behavior == GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH)
            window->context.release = GLFW_RELEASE_BEHAVIOR_FLUSH;
    }



    {
        PFNGLCLEARPROC glClear = (PFNGLCLEARPROC)
            window->context.getProcAddress("glClear");
        glClear(GL_COLOR_BUFFER_BIT);
        window->context.swapBuffers(window);
    }

    glfwMakeContextCurrent((GLFWwindow*) previous);
    return GLFW_TRUE;
}
