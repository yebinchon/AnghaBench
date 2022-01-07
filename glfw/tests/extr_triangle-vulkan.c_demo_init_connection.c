
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {int dummy; } ;


 int demo_error_callback ;
 int exit (int) ;
 int fflush (int ) ;
 int gladLoadVulkanUserPtr (int *,int ,int *) ;
 int glad_vulkan_callback ;
 int glfwInit () ;
 int glfwSetErrorCallback (int ) ;
 int glfwVulkanSupported () ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void demo_init_connection(struct demo *demo) {
    glfwSetErrorCallback(demo_error_callback);

    if (!glfwInit()) {
        printf("Cannot initialize GLFW.\nExiting ...\n");
        fflush(stdout);
        exit(1);
    }

    if (!glfwVulkanSupported()) {
        printf("GLFW failed to find the Vulkan loader.\nExiting ...\n");
        fflush(stdout);
        exit(1);
    }

    gladLoadVulkanUserPtr(((void*)0), glad_vulkan_callback, ((void*)0));
}
