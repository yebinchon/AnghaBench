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
 int /*<<< orphan*/  FUNC0 (struct forth_stack*,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct forth_stack*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct forth_stack*,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct forth_stack*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void *FUNC5 (void **IP, struct forth_stack *st) {
  FUNC4 (3, "load_image\n");
  char *filename;
  int old_stack_top = st->top;
  if (!FUNC2 (st, &filename, "read_image 1st")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }
  Image *r = FUNC1 (st, filename);

  if (r == NULL) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  FUNC0 (st, st->top + 1, old_stack_top);

  FUNC3 (st, r);

  NEXT;
}