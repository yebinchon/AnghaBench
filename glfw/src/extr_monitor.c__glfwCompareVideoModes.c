
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWvidmode ;


 int compareVideoModes (int const*,int const*) ;

int _glfwCompareVideoModes(const GLFWvidmode* fm, const GLFWvidmode* sm)
{
    return compareVideoModes(fm, sm);
}
