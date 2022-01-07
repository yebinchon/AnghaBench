
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int line ;
struct TYPE_10__ {int member_0; } ;
struct TYPE_11__ {int guid; TYPE_1__ member_0; } ;
typedef TYPE_2__ _GLFWmapping ;
struct TYPE_12__ {int mapping; scalar_t__ present; } ;
typedef TYPE_3__ _GLFWjoystick ;
struct TYPE_13__ {int mappingCount; TYPE_3__* joysticks; TYPE_2__* mappings; } ;


 int GLFW_FALSE ;
 int GLFW_JOYSTICK_LAST ;
 int GLFW_TRUE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 TYPE_9__ _glfw ;
 int assert (int ) ;
 TYPE_2__* findMapping (int ) ;
 int findValidMapping (TYPE_3__*) ;
 int memcpy (char*,char const*,size_t const) ;
 scalar_t__ parseMapping (TYPE_2__*,char*) ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 size_t strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;

int glfwUpdateGamepadMappings(const char* string)
{
    int jid;
    const char* c = string;

    assert(string != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_FALSE);

    while (*c)
    {
        if ((*c >= '0' && *c <= '9') ||
            (*c >= 'a' && *c <= 'f') ||
            (*c >= 'A' && *c <= 'F'))
        {
            char line[1024];

            const size_t length = strcspn(c, "\r\n");
            if (length < sizeof(line))
            {
                _GLFWmapping mapping = {{0}};

                memcpy(line, c, length);
                line[length] = '\0';

                if (parseMapping(&mapping, line))
                {
                    _GLFWmapping* previous = findMapping(mapping.guid);
                    if (previous)
                        *previous = mapping;
                    else
                    {
                        _glfw.mappingCount++;
                        _glfw.mappings =
                            realloc(_glfw.mappings,
                                    sizeof(_GLFWmapping) * _glfw.mappingCount);
                        _glfw.mappings[_glfw.mappingCount - 1] = mapping;
                    }
                }
            }

            c += length;
        }
        else
        {
            c += strcspn(c, "\r\n");
            c += strspn(c, "\r\n");
        }
    }

    for (jid = 0; jid <= GLFW_JOYSTICK_LAST; jid++)
    {
        _GLFWjoystick* js = _glfw.joysticks + jid;
        if (js->present)
            js->mapping = findValidMapping(js);
    }

    return GLFW_TRUE;
}
