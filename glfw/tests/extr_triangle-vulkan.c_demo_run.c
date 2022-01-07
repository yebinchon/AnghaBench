
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demo {float depthStencil; float depthIncrement; scalar_t__ curFrame; scalar_t__ frameCount; int window; int device; } ;


 int GLFW_TRUE ;
 scalar_t__ INT32_MAX ;
 int demo_draw (struct demo*) ;
 int glfwPollEvents () ;
 int glfwSetWindowShouldClose (int ,int ) ;
 int glfwWindowShouldClose (int ) ;
 int vkDeviceWaitIdle (int ) ;

__attribute__((used)) static void demo_run(struct demo *demo) {
    while (!glfwWindowShouldClose(demo->window)) {
        glfwPollEvents();

        demo_draw(demo);

        if (demo->depthStencil > 0.99f)
            demo->depthIncrement = -0.001f;
        if (demo->depthStencil < 0.8f)
            demo->depthIncrement = 0.001f;

        demo->depthStencil += demo->depthIncrement;


        vkDeviceWaitIdle(demo->device);
        demo->curFrame++;
        if (demo->frameCount != INT32_MAX && demo->curFrame == demo->frameCount)
            glfwSetWindowShouldClose(demo->window, GLFW_TRUE);
    }
}
