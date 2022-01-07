
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PRIMARY; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_2__ _glfw ;
 char const* getSelectionString (int ) ;

const char* glfwGetX11SelectionString(void)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));
    return getSelectionString(_glfw.x11.PRIMARY);
}
