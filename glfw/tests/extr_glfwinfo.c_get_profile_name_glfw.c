
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_OPENGL_COMPAT_PROFILE ;
 int GLFW_OPENGL_CORE_PROFILE ;
 char const* PROFILE_NAME_COMPAT ;
 char const* PROFILE_NAME_CORE ;

__attribute__((used)) static const char* get_profile_name_glfw(int profile)
{
    if (profile == GLFW_OPENGL_COMPAT_PROFILE)
        return PROFILE_NAME_COMPAT;
    if (profile == GLFW_OPENGL_CORE_PROFILE)
        return PROFILE_NAME_CORE;

    return "unknown";
}
