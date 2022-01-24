#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct forth_stack {int top; } ;
struct TYPE_5__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ ImageInfo ;
typedef  int /*<<< orphan*/  Image ;
typedef  int /*<<< orphan*/  ExceptionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FORTH_FAIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int MaxTextExtent ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct forth_stack*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct forth_stack*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct forth_stack*,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct forth_stack*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void *FUNC12 (void **IP, struct forth_stack *st) {
  char *filename;
  int old_stack_top = st->top;
  if (!FUNC8 (st, &filename, "ping: 1st isn't str")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }
  if (FUNC11 (filename) > MaxTextExtent-1) {
    return FUNC6 (st, "ping: filename too long");
  }
  ExceptionInfo exception;
  FUNC4 (&exception);
  ImageInfo *image_info = FUNC1 (NULL);
  FUNC10 (image_info->filename, filename);
  Image *r = FUNC5 (image_info, &exception);
  FUNC3 (image_info);
  if (r == NULL) {
    st->top = old_stack_top;
    FUNC0 (&exception);
    FUNC2 (&exception);
    return FUNC6 (st, "ping: PingImage (%s) throws exception", filename);
  }

  FUNC7 (st, st->top + 1, old_stack_top);

  FUNC9 (st, r);

  NEXT;
}