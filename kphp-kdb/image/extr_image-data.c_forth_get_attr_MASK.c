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
struct forth_stack {int top; int /*<<< orphan*/ * x; } ;
struct TYPE_3__ {int length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ ImageAttribute ;
typedef  int /*<<< orphan*/  Image ;

/* Variables and functions */
 void* FORTH_FAIL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct forth_stack*,int,int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct forth_stack*,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct forth_stack*,char**,char*) ; 

__attribute__((used)) static void *FUNC8 (void **IP, struct forth_stack *st) {
  char *attr;
  Image *image;
  int old_stack_top = st->top;

  if (!FUNC7 (st, &attr, "getattr: 2nd isn't str")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  if (!FUNC6 (st, &image, "getattr: 1st isn't image")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }

  FUNC2 (st, st->top + 1, old_stack_top);

  const ImageAttribute *a = FUNC0 (image, attr);
  if (a == NULL) {
    st->top++;
    FUNC5 (&st->x[st->top], "NULL", 0);
  } else {
    char *b = FUNC3 (a->length+1); FUNC1 (b);
    FUNC4 (b, a->value, a->length);
    b[a->length] = 0;
    st->top++;
    FUNC5 (&st->x[st->top], b, 0);
  }

  NEXT;
}