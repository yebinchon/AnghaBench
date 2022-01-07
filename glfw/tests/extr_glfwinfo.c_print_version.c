
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_VERSION_MAJOR ;
 int GLFW_VERSION_MINOR ;
 int GLFW_VERSION_REVISION ;
 int glfwGetVersion (int*,int*,int*) ;
 char* glfwGetVersionString () ;
 int printf (char*,...) ;

__attribute__((used)) static void print_version(void)
{
    int major, minor, revision;
    glfwGetVersion(&major, &minor, &revision);

    printf("GLFW header version: %u.%u.%u\n",
           GLFW_VERSION_MAJOR,
           GLFW_VERSION_MINOR,
           GLFW_VERSION_REVISION);
    printf("GLFW library version: %u.%u.%u\n", major, minor, revision);
    printf("GLFW library version string: \"%s\"\n", glfwGetVersionString());
}
