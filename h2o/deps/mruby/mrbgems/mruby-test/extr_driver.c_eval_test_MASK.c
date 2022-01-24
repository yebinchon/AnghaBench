#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ exc; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb)
{
  /* evaluate the test */
  FUNC1(mrb, FUNC3(mrb), "report", 0);
  /* did an exception occur? */
  if (mrb->exc) {
    FUNC2(mrb);
    mrb->exc = 0;
    return EXIT_FAILURE;
  }
  else if (!FUNC0(mrb)) {
    return EXIT_FAILURE;
  }
  return EXIT_SUCCESS;
}