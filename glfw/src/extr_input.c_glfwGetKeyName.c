
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_KEY_APOSTROPHE ;
 int GLFW_KEY_KP_0 ;
 int GLFW_KEY_KP_ADD ;
 int GLFW_KEY_KP_EQUAL ;
 int GLFW_KEY_UNKNOWN ;
 int GLFW_KEY_WORLD_2 ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _glfwPlatformGetKeyScancode (int) ;
 char const* _glfwPlatformGetScancodeName (int) ;

const char* glfwGetKeyName(int key, int scancode)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (key != GLFW_KEY_UNKNOWN)
    {
        if (key != GLFW_KEY_KP_EQUAL &&
            (key < GLFW_KEY_KP_0 || key > GLFW_KEY_KP_ADD) &&
            (key < GLFW_KEY_APOSTROPHE || key > GLFW_KEY_WORLD_2))
        {
            return ((void*)0);
        }

        scancode = _glfwPlatformGetKeyScancode(key);
    }

    return _glfwPlatformGetScancodeName(scancode);
}
