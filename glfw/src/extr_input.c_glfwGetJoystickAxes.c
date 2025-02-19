
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int axisCount; float const* axes; int present; } ;
typedef TYPE_1__ _GLFWjoystick ;
struct TYPE_5__ {TYPE_1__* joysticks; } ;


 int GLFW_INVALID_ENUM ;
 int GLFW_JOYSTICK_1 ;
 int GLFW_JOYSTICK_LAST ;
 int _GLFW_POLL_AXES ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_3__ _glfw ;
 int _glfwInputError (int ,char*,int) ;
 int _glfwPlatformPollJoystick (TYPE_1__*,int ) ;
 int assert (int) ;

const float* glfwGetJoystickAxes(int jid, int* count)
{
    _GLFWjoystick* js;

    assert(jid >= GLFW_JOYSTICK_1);
    assert(jid <= GLFW_JOYSTICK_LAST);
    assert(count != ((void*)0));

    *count = 0;

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (jid < 0 || jid > GLFW_JOYSTICK_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid joystick ID %i", jid);
        return ((void*)0);
    }

    js = _glfw.joysticks + jid;
    if (!js->present)
        return ((void*)0);

    if (!_glfwPlatformPollJoystick(js, _GLFW_POLL_AXES))
        return ((void*)0);

    *count = js->axisCount;
    return js->axes;
}
