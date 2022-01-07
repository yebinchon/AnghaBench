
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int major; int (* extensionSupported ) (char const*) ;scalar_t__ (* GetString ) (int ) ;scalar_t__ (* GetStringi ) (int ,int) ;int (* GetIntegerv ) (int ,int*) ;} ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_7__ {int contextSlot; } ;
typedef int GLint ;


 int GLFW_FALSE ;
 int GLFW_INVALID_VALUE ;
 int GLFW_NO_CURRENT_CONTEXT ;
 int GLFW_PLATFORM_ERROR ;
 int GLFW_TRUE ;
 int GL_EXTENSIONS ;
 int GL_NUM_EXTENSIONS ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 TYPE_4__ _glfw ;
 int _glfwInputError (int ,char*) ;
 TYPE_2__* _glfwPlatformGetTls (int *) ;
 scalar_t__ _glfwStringInExtensionString (char const*,char const*) ;
 int assert (int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (int ,int*) ;
 scalar_t__ stub2 (int ,int) ;
 scalar_t__ stub3 (int ) ;
 int stub4 (char const*) ;

int glfwExtensionSupported(const char* extension)
{
    _GLFWwindow* window;
    assert(extension != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_FALSE);

    window = _glfwPlatformGetTls(&_glfw.contextSlot);
    if (!window)
    {
        _glfwInputError(GLFW_NO_CURRENT_CONTEXT,
                        "Cannot query extension without a current OpenGL or OpenGL ES context");
        return GLFW_FALSE;
    }

    if (*extension == '\0')
    {
        _glfwInputError(GLFW_INVALID_VALUE, "Extension name cannot be an empty string");
        return GLFW_FALSE;
    }

    if (window->context.major >= 3)
    {
        int i;
        GLint count;



        window->context.GetIntegerv(GL_NUM_EXTENSIONS, &count);

        for (i = 0; i < count; i++)
        {
            const char* en = (const char*)
                window->context.GetStringi(GL_EXTENSIONS, i);
            if (!en)
            {
                _glfwInputError(GLFW_PLATFORM_ERROR,
                                "Extension string retrieval is broken");
                return GLFW_FALSE;
            }

            if (strcmp(en, extension) == 0)
                return GLFW_TRUE;
        }
    }
    else
    {


        const char* extensions = (const char*)
            window->context.GetString(GL_EXTENSIONS);
        if (!extensions)
        {
            _glfwInputError(GLFW_PLATFORM_ERROR,
                            "Extension string retrieval is broken");
            return GLFW_FALSE;
        }

        if (_glfwStringInExtensionString(extension, extensions))
            return GLFW_TRUE;
    }


    return window->context.extensionSupported(extension);
}
