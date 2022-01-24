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
struct deco_render_params {TYPE_2__* color; } ;
struct TYPE_8__ {int y; int height; int width; scalar_t__ x; } ;
struct TYPE_9__ {TYPE_1__* parent; TYPE_3__ deco_rect; } ;
struct TYPE_7__ {int /*<<< orphan*/  border; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame_buffer; } ;
typedef  TYPE_3__ Rect ;
typedef  TYPE_4__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 

__attribute__((used)) static void FUNC2(Con *con, struct deco_render_params *p) {
    FUNC0(con->parent != NULL);

    Rect *dr = &(con->deco_rect);

    /* Left */
    FUNC1(&(con->parent->frame_buffer), p->color->border,
                        dr->x, dr->y, 1, dr->height);

    /* Right */
    FUNC1(&(con->parent->frame_buffer), p->color->border,
                        dr->x + dr->width - 1, dr->y, 1, dr->height);

    /* Top */
    FUNC1(&(con->parent->frame_buffer), p->color->border,
                        dr->x, dr->y, dr->width, 1);

    /* Bottom */
    FUNC1(&(con->parent->frame_buffer), p->color->border,
                        dr->x, dr->y + dr->height - 1, dr->width, 1);
}