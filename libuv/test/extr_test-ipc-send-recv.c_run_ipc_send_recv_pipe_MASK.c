#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_4__ {int /*<<< orphan*/  pipe; } ;
struct TYPE_6__ {TYPE_2__ send2; TYPE_1__ send; int /*<<< orphan*/  expected_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TEST_PIPENAME ; 
 int /*<<< orphan*/  TEST_PIPENAME_2 ; 
 int /*<<< orphan*/  UV_NAMED_PIPE ; 
 TYPE_3__ ctx ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(int inprocess) {
  int r;

  ctx.expected_type = UV_NAMED_PIPE;

  r = FUNC5(FUNC3(), &ctx.send.pipe, 1);
  FUNC0(r == 0);

  r = FUNC4(&ctx.send.pipe, TEST_PIPENAME);
  FUNC0(r == 0);

  r = FUNC5(FUNC3(), &ctx.send2.pipe, 1);
  FUNC0(r == 0);

  r = FUNC4(&ctx.send2.pipe, TEST_PIPENAME_2);
  FUNC0(r == 0);

  r = FUNC2(inprocess);
  FUNC0(r == 0);

  FUNC1();
  return 0;
}