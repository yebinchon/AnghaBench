#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  height; scalar_t__ width; } ;
struct TYPE_12__ {float children; int deco_height; scalar_t__ y; scalar_t__ x; TYPE_1__ rect; } ;
typedef  TYPE_4__ render_params ;
struct TYPE_11__ {int width; int height; scalar_t__ x; scalar_t__ y; } ;
struct TYPE_10__ {int /*<<< orphan*/  height; scalar_t__ y; scalar_t__ width; scalar_t__ x; } ;
struct TYPE_13__ {scalar_t__ layout; scalar_t__ border_style; TYPE_3__ deco_rect; TYPE_2__ rect; } ;
typedef  TYPE_5__ Con ;

/* Variables and functions */
 scalar_t__ BS_NONE ; 
 scalar_t__ BS_PIXEL ; 
 scalar_t__ L_TABBED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (float) ; 

__attribute__((used)) static void FUNC2(Con *con, Con *child, render_params *p, int i) {
    FUNC0(con->layout == L_TABBED);

    child->rect.x = p->x;
    child->rect.y = p->y;
    child->rect.width = p->rect.width;
    child->rect.height = p->rect.height;

    child->deco_rect.width = FUNC1((float)child->rect.width / p->children);
    child->deco_rect.x = p->x - con->rect.x + i * child->deco_rect.width;
    child->deco_rect.y = p->y - con->rect.y;

    /* Since the tab width may be something like 31,6 px per tab, we
     * let the last tab have all the extra space (0,6 * children). */
    if (i == (p->children - 1)) {
        child->deco_rect.width += (child->rect.width - (child->deco_rect.x + child->deco_rect.width));
    }

    if (p->children > 1 || (child->border_style != BS_PIXEL && child->border_style != BS_NONE)) {
        child->rect.y += p->deco_height;
        child->rect.height -= p->deco_height;
        child->deco_rect.height = p->deco_height;
    } else {
        child->deco_rect.height = (child->border_style == BS_PIXEL ? 1 : 0);
    }
}