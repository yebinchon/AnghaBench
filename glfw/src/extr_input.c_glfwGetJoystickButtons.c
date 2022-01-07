
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int buttonCount; int hatCount; unsigned char const* buttons; int present; } ;
typedef TYPE_3__ _GLFWjoystick ;
struct TYPE_6__ {scalar_t__ hatButtons; } ;
struct TYPE_7__ {TYPE_1__ init; } ;
struct TYPE_9__ {TYPE_2__ hints; TYPE_3__* joysticks; } ;


 int GLFW_INVALID_ENUM ;
 int GLFW_JOYSTICK_1 ;
 int GLFW_JOYSTICK_LAST ;
 int _GLFW_POLL_BUTTONS ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*,int) ;
 int _glfwPlatformPollJoystick (TYPE_3__*,int ) ;
 int assert (int) ;

const unsigned char* glfwGetJoystickButtons(int jid, int* count)
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

    if (!_glfwPlatformPollJoystick(js, _GLFW_POLL_BUTTONS))
        return ((void*)0);

    if (_glfw.hints.init.hatButtons)
        *count = js->buttonCount + js->hatCount * 4;
    else
        *count = js->buttonCount;

    return js->buttons;
}
