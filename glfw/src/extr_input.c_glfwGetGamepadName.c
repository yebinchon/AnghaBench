
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* mapping; int present; } ;
typedef TYPE_2__ _GLFWjoystick ;
struct TYPE_7__ {TYPE_2__* joysticks; } ;
struct TYPE_5__ {char const* name; } ;


 int GLFW_INVALID_ENUM ;
 int GLFW_JOYSTICK_1 ;
 int GLFW_JOYSTICK_LAST ;
 int _GLFW_POLL_PRESENCE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_4__ _glfw ;
 int _glfwInputError (int ,char*,int) ;
 int _glfwPlatformPollJoystick (TYPE_2__*,int ) ;
 int assert (int) ;

const char* glfwGetGamepadName(int jid)
{
    _GLFWjoystick* js;

    assert(jid >= GLFW_JOYSTICK_1);
    assert(jid <= GLFW_JOYSTICK_LAST);

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (jid < 0 || jid > GLFW_JOYSTICK_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid joystick ID %i", jid);
        return ((void*)0);
    }

    js = _glfw.joysticks + jid;
    if (!js->present)
        return ((void*)0);

    if (!_glfwPlatformPollJoystick(js, _GLFW_POLL_PRESENCE))
        return ((void*)0);

    if (!js->mapping)
        return ((void*)0);

    return js->mapping->name;
}
