#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct status_block {char* min_width_str; int /*<<< orphan*/  pango_markup; int /*<<< orphan*/ * short_text; int /*<<< orphan*/ * full_text; scalar_t__ min_width; scalar_t__ urgent; } ;
struct TYPE_2__ {int has_urgent; int /*<<< orphan*/  block; } ;
typedef  TYPE_1__ parser_ctx ;
typedef  int /*<<< orphan*/  i3String ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct status_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blocks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct status_block*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct status_block* FUNC6 (int) ; 
 int /*<<< orphan*/  statusline_buffer ; 

__attribute__((used)) static int FUNC7(void *context) {
    parser_ctx *ctx = context;
    struct status_block *new_block = FUNC6(sizeof(struct status_block));
    FUNC4(new_block, &(ctx->block), sizeof(struct status_block));
    /* Ensure we have a full_text set, so that when it is missing (or null),
     * i3bar doesn’t crash and the user gets an annoying message. */
    if (!new_block->full_text)
        new_block->full_text = FUNC2("SPEC VIOLATION: full_text is NULL!");
    if (new_block->urgent)
        ctx->has_urgent = true;

    if (new_block->min_width_str) {
        i3String *text = FUNC2(new_block->min_width_str);
        FUNC3(text, new_block->pango_markup);
        new_block->min_width = (uint32_t)FUNC5(text);
        FUNC1(text);
    }

    FUNC3(new_block->full_text, new_block->pango_markup);

    if (new_block->short_text != NULL)
        FUNC3(new_block->short_text, new_block->pango_markup);

    FUNC0(&statusline_buffer, new_block, blocks);
    return 1;
}