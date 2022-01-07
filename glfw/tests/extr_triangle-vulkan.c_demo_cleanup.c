
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {int mem; int image; int view; } ;
struct TYPE_6__ {int mem; int buf; } ;
struct demo {size_t swapchainImageCount; int window; TYPE_4__* queue_props; int inst; int surface; int msg_callback; scalar_t__ validate; int device; TYPE_4__* buffers; int swapchain; TYPE_3__ depth; TYPE_2__* textures; TYPE_1__ vertices; int desc_layout; int pipeline_layout; int render_pass; int pipeline; int cmd_pool; scalar_t__ draw_cmd; scalar_t__ setup_cmd; int desc_pool; TYPE_4__* framebuffers; } ;
struct TYPE_9__ {int view; } ;
struct TYPE_7__ {int sampler; int mem; int image; int view; } ;


 size_t DEMO_TEXTURE_COUNT ;
 int free (TYPE_4__*) ;
 int glfwDestroyWindow (int ) ;
 int glfwTerminate () ;
 int vkDestroyBuffer (int ,int ,int *) ;
 int vkDestroyCommandPool (int ,int ,int *) ;
 int vkDestroyDebugReportCallbackEXT (int ,int ,int *) ;
 int vkDestroyDescriptorPool (int ,int ,int *) ;
 int vkDestroyDescriptorSetLayout (int ,int ,int *) ;
 int vkDestroyDevice (int ,int *) ;
 int vkDestroyFramebuffer (int ,TYPE_4__,int *) ;
 int vkDestroyImage (int ,int ,int *) ;
 int vkDestroyImageView (int ,int ,int *) ;
 int vkDestroyInstance (int ,int *) ;
 int vkDestroyPipeline (int ,int ,int *) ;
 int vkDestroyPipelineLayout (int ,int ,int *) ;
 int vkDestroyRenderPass (int ,int ,int *) ;
 int vkDestroySampler (int ,int ,int *) ;
 int vkDestroySurfaceKHR (int ,int ,int *) ;
 int vkDestroySwapchainKHR (int ,int ,int *) ;
 int vkFreeCommandBuffers (int ,int ,int,scalar_t__*) ;
 int vkFreeMemory (int ,int ,int *) ;

__attribute__((used)) static void demo_cleanup(struct demo *demo) {
    uint32_t i;

    for (i = 0; i < demo->swapchainImageCount; i++) {
        vkDestroyFramebuffer(demo->device, demo->framebuffers[i], ((void*)0));
    }
    free(demo->framebuffers);
    vkDestroyDescriptorPool(demo->device, demo->desc_pool, ((void*)0));

    if (demo->setup_cmd) {
        vkFreeCommandBuffers(demo->device, demo->cmd_pool, 1, &demo->setup_cmd);
    }
    vkFreeCommandBuffers(demo->device, demo->cmd_pool, 1, &demo->draw_cmd);
    vkDestroyCommandPool(demo->device, demo->cmd_pool, ((void*)0));

    vkDestroyPipeline(demo->device, demo->pipeline, ((void*)0));
    vkDestroyRenderPass(demo->device, demo->render_pass, ((void*)0));
    vkDestroyPipelineLayout(demo->device, demo->pipeline_layout, ((void*)0));
    vkDestroyDescriptorSetLayout(demo->device, demo->desc_layout, ((void*)0));

    vkDestroyBuffer(demo->device, demo->vertices.buf, ((void*)0));
    vkFreeMemory(demo->device, demo->vertices.mem, ((void*)0));

    for (i = 0; i < DEMO_TEXTURE_COUNT; i++) {
        vkDestroyImageView(demo->device, demo->textures[i].view, ((void*)0));
        vkDestroyImage(demo->device, demo->textures[i].image, ((void*)0));
        vkFreeMemory(demo->device, demo->textures[i].mem, ((void*)0));
        vkDestroySampler(demo->device, demo->textures[i].sampler, ((void*)0));
    }

    for (i = 0; i < demo->swapchainImageCount; i++) {
        vkDestroyImageView(demo->device, demo->buffers[i].view, ((void*)0));
    }

    vkDestroyImageView(demo->device, demo->depth.view, ((void*)0));
    vkDestroyImage(demo->device, demo->depth.image, ((void*)0));
    vkFreeMemory(demo->device, demo->depth.mem, ((void*)0));

    vkDestroySwapchainKHR(demo->device, demo->swapchain, ((void*)0));
    free(demo->buffers);

    vkDestroyDevice(demo->device, ((void*)0));
    if (demo->validate) {
        vkDestroyDebugReportCallbackEXT(demo->inst, demo->msg_callback, ((void*)0));
    }
    vkDestroySurfaceKHR(demo->inst, demo->surface, ((void*)0));
    vkDestroyInstance(demo->inst, ((void*)0));

    free(demo->queue_props);

    glfwDestroyWindow(demo->window);
    glfwTerminate();
}
