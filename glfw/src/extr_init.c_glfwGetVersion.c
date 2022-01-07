
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_VERSION_MAJOR ;
 int GLFW_VERSION_MINOR ;
 int GLFW_VERSION_REVISION ;

void glfwGetVersion(int* major, int* minor, int* rev)
{
    if (major != ((void*)0))
        *major = GLFW_VERSION_MAJOR;
    if (minor != ((void*)0))
        *minor = GLFW_VERSION_MINOR;
    if (rev != ((void*)0))
        *rev = GLFW_VERSION_REVISION;
}
