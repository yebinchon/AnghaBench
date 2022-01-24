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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tcp; } ;
struct TYPE_4__ {int /*<<< orphan*/  tcp; } ;
struct TYPE_6__ {TYPE_2__ send2; TYPE_1__ send; int /*<<< orphan*/  expected_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  UV_TCP ; 
 TYPE_3__ ctx ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,struct sockaddr_in*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(int inprocess) {
  struct sockaddr_in addr;
  int r;

  FUNC0(0 == FUNC4("127.0.0.1", TEST_PORT, &addr));

  ctx.expected_type = UV_TCP;

  r = FUNC6(FUNC3(), &ctx.send.tcp);
  FUNC0(r == 0);

  r = FUNC6(FUNC3(), &ctx.send2.tcp);
  FUNC0(r == 0);

  r = FUNC5(&ctx.send.tcp, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC5(&ctx.send2.tcp, (const struct sockaddr*) &addr, 0);
  FUNC0(r == 0);

  r = FUNC2(inprocess);
  FUNC0(r == 0);

  FUNC1();
  return 0;
}