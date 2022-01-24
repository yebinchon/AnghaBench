#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct forth_stack {int top; } ;
struct TYPE_6__ {scalar_t__ severity; } ;
typedef  int /*<<< orphan*/  Image ;
typedef  TYPE_1__ ExceptionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FORTH_FAIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  LanczosFilter ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,double,TYPE_1__*) ; 
 scalar_t__ UndefinedException ; 
 int /*<<< orphan*/  FUNC4 (struct forth_stack*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct forth_stack*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct forth_stack*,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct forth_stack*,int*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct forth_stack*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC9 (void **IP, struct forth_stack *st) {
  Image *image;
  int old_stack_top = st->top;
  int width, height;
  if (!FUNC7 (st, &height, "resize_image 3rd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC7 (st, &width, "resize_image 2nd")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC6 (st, &image, "resize_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  ExceptionInfo exception;
  FUNC2 (&exception);
  Image *r = FUNC3 (image, width, height, LanczosFilter, 1.0, &exception);
  if (exception.severity != UndefinedException) {
    st->top = old_stack_top;
    FUNC5 (st, &exception);
    if (r != NULL) {
      FUNC1 (r);
    }
    return FORTH_FAIL;
  }
  FUNC0 (&exception);

  FUNC4 (st, st->top + 1, old_stack_top);

  FUNC8 (st, r);

  NEXT;
}