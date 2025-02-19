
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int GLFW_VERSION_MAJOR ;
 int GLFW_VERSION_MINOR ;
 int GLFW_VERSION_REVISION ;
 int glfwGetVersion (int*,int*,int*) ;
 int printf (char*) ;

__attribute__((used)) static int valid_version(void)
{
    int major, minor, revision;
    glfwGetVersion(&major, &minor, &revision);

    if (major != GLFW_VERSION_MAJOR)
    {
        printf("*** ERROR: GLFW major version mismatch! ***\n");
        return GLFW_FALSE;
    }

    if (minor != GLFW_VERSION_MINOR || revision != GLFW_VERSION_REVISION)
        printf("*** WARNING: GLFW version mismatch! ***\n");

    return GLFW_TRUE;
}
