#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct forth_stack {int top; } ;
typedef  int /*<<< orphan*/  Image ;

/* Variables and functions */
 void* FORTH_FAIL ; 
 int /*<<< orphan*/  NEXT ; 
 void* FUNC0 (struct forth_stack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct forth_stack*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct forth_stack*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct forth_stack*,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct forth_stack*,int*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct forth_stack*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6 (void **IP, struct forth_stack *st) {
  Image *image;
  int old_stack_top = st->top;
  int angle;

  if (!FUNC4 (st, &angle, "rotate_image 2nd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC3 (st, &image, "rotate_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  angle %= 4;
  if (angle < 0) {
    angle += 4;
  }
  Image *r = FUNC2 (st, image, 90 * angle);
  if (r == NULL) {
    st->top = old_stack_top;
    return FUNC0 (st, "rotate_image: gm_rotate_image fail");
  }

  FUNC1 (st, st->top + 1, old_stack_top);

  FUNC5 (st, r);

  NEXT;
}