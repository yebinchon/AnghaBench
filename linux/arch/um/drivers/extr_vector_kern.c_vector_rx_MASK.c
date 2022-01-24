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
struct vector_private {int options; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_ITERATIONS ; 
 int VECTOR_RX ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct vector_private*) ; 
 int FUNC3 (struct vector_private*) ; 

__attribute__((used)) static void FUNC4(struct vector_private *vp)
{
	int err;
	int iter = 0;

	if ((vp->options & VECTOR_RX) > 0)
		while (((err = FUNC3(vp)) > 0) && (iter < MAX_ITERATIONS))
			iter++;
	else
		while (((err = FUNC2(vp)) > 0) && (iter < MAX_ITERATIONS))
			iter++;
	if ((err != 0) && FUNC0())
		FUNC1(vp->dev, "vector_rx: error(%d)\n", err);
	if (iter == MAX_ITERATIONS)
		FUNC1(vp->dev, "vector_rx: device stuck, remote end may have closed the connection\n");
}