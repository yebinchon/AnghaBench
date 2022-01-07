
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_INVALID_ENUM ;
 int GLFW_KEY_LAST ;
 int GLFW_KEY_SPACE ;
 int GLFW_RELEASE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int) ;
 int _glfwInputError (int ,char*,int) ;
 int _glfwPlatformGetKeyScancode (int) ;

int glfwGetKeyScancode(int key)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(-1);

    if (key < GLFW_KEY_SPACE || key > GLFW_KEY_LAST)
    {
        _glfwInputError(GLFW_INVALID_ENUM, "Invalid key %i", key);
        return GLFW_RELEASE;
    }

    return _glfwPlatformGetKeyScancode(key);
}
