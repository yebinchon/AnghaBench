#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  image; int /*<<< orphan*/  view; } ;
struct TYPE_6__ {int /*<<< orphan*/  mem; int /*<<< orphan*/  buf; } ;
struct demo {size_t swapchainImageCount; int /*<<< orphan*/  window; TYPE_4__* queue_props; int /*<<< orphan*/  inst; int /*<<< orphan*/  surface; int /*<<< orphan*/  msg_callback; scalar_t__ validate; int /*<<< orphan*/  device; TYPE_4__* buffers; int /*<<< orphan*/  swapchain; TYPE_3__ depth; TYPE_2__* textures; TYPE_1__ vertices; int /*<<< orphan*/  desc_layout; int /*<<< orphan*/  pipeline_layout; int /*<<< orphan*/  render_pass; int /*<<< orphan*/  pipeline; int /*<<< orphan*/  cmd_pool; scalar_t__ draw_cmd; scalar_t__ setup_cmd; int /*<<< orphan*/  desc_pool; TYPE_4__* framebuffers; } ;
struct TYPE_9__ {int /*<<< orphan*/  view; } ;
struct TYPE_7__ {int /*<<< orphan*/  sampler; int /*<<< orphan*/  mem; int /*<<< orphan*/  image; int /*<<< orphan*/  view; } ;

/* Variables and functions */
 size_t DEMO_TEXTURE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC21(struct demo *demo) {
    uint32_t i;

    for (i = 0; i < demo->swapchainImageCount; i++) {
        FUNC9(demo->device, demo->framebuffers[i], NULL);
    }
    FUNC0(demo->framebuffers);
    FUNC6(demo->device, demo->desc_pool, NULL);

    if (demo->setup_cmd) {
        FUNC19(demo->device, demo->cmd_pool, 1, &demo->setup_cmd);
    }
    FUNC19(demo->device, demo->cmd_pool, 1, &demo->draw_cmd);
    FUNC4(demo->device, demo->cmd_pool, NULL);

    FUNC13(demo->device, demo->pipeline, NULL);
    FUNC15(demo->device, demo->render_pass, NULL);
    FUNC14(demo->device, demo->pipeline_layout, NULL);
    FUNC7(demo->device, demo->desc_layout, NULL);

    FUNC3(demo->device, demo->vertices.buf, NULL);
    FUNC20(demo->device, demo->vertices.mem, NULL);

    for (i = 0; i < DEMO_TEXTURE_COUNT; i++) {
        FUNC11(demo->device, demo->textures[i].view, NULL);
        FUNC10(demo->device, demo->textures[i].image, NULL);
        FUNC20(demo->device, demo->textures[i].mem, NULL);
        FUNC16(demo->device, demo->textures[i].sampler, NULL);
    }

    for (i = 0; i < demo->swapchainImageCount; i++) {
        FUNC11(demo->device, demo->buffers[i].view, NULL);
    }

    FUNC11(demo->device, demo->depth.view, NULL);
    FUNC10(demo->device, demo->depth.image, NULL);
    FUNC20(demo->device, demo->depth.mem, NULL);

    FUNC18(demo->device, demo->swapchain, NULL);
    FUNC0(demo->buffers);

    FUNC8(demo->device, NULL);
    if (demo->validate) {
        FUNC5(demo->inst, demo->msg_callback, NULL);
    }
    FUNC17(demo->inst, demo->surface, NULL);
    FUNC12(demo->inst, NULL);

    FUNC0(demo->queue_props);

    FUNC1(demo->window);
    FUNC2();
}