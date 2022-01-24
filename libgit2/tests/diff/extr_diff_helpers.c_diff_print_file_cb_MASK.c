#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_delta ;
struct TYPE_2__ {int /*<<< orphan*/  debug; } ;
typedef  TYPE_1__ diff_expects ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,float,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,float) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2(
	const git_diff_delta *delta,
	float progress,
	void *payload)
{
	if (!payload) {
		FUNC1(stderr, delta, progress);
		return 0;
	}

	if (!((diff_expects *)payload)->debug)
		FUNC1(stderr, delta, progress);

	return FUNC0(delta, progress, payload);
}