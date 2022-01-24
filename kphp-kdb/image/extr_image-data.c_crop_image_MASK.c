#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct forth_stack {int top; } ;
struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef  TYPE_1__ RectangleInfo ;
typedef  int /*<<< orphan*/  Image ;

/* Variables and functions */
 void* FORTH_FAIL ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC0 (struct forth_stack*,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct forth_stack*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct forth_stack*,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct forth_stack*,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct forth_stack*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC5 (void **IP, struct forth_stack *st) {
  int old_stack_top = st->top;
  int x, y, width, height;
  Image *image;

  if (!FUNC3 (st, &height, "crop_image 5th")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC3 (st, &width, "crop_image 4th")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC3 (st, &y, "crop_image 3rd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC3 (st, &x, "crop_image 2nd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC2 (st, &image, "crop_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }
  RectangleInfo rect;
  rect.x = x;
  rect.y = y;
  rect.width = width;
  rect.height = height;
  Image *r = FUNC1 (st, image, &rect);
  if (r == NULL) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  FUNC0 (st, st->top + 1, old_stack_top);

  FUNC4 (st, r);

  NEXT;

}