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
struct forth_stack {int dummy; } ;
struct TYPE_6__ {scalar_t__ severity; } ;
typedef  int /*<<< orphan*/  Image ;
typedef  TYPE_1__ ExceptionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,double,TYPE_1__*) ; 
 scalar_t__ UndefinedException ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct forth_stack*,TYPE_1__*) ; 

__attribute__((used)) static Image *FUNC7 (struct forth_stack *st, Image *image, int angle) {
  FUNC5 (angle >= 0 && angle < 360);
  if (angle == 0) {
    return FUNC3 (image);
  }
  ExceptionInfo exception;
  FUNC2 (&exception);
  Image *r = FUNC4 (image, (double) angle, &exception);
  if (exception.severity != UndefinedException) {
    FUNC6 (st, &exception);
    if (r != NULL) {
      FUNC1 (r);
    }
    return 0;
  }
  FUNC0 (&exception);
  return r;
}