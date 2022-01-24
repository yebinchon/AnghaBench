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
struct r9a06g032_priv {int /*<<< orphan*/  lock; } ;
struct r9a06g032_gate {scalar_t__ midle; scalar_t__ ready; scalar_t__ reset; scalar_t__ gate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct r9a06g032_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct r9a06g032_priv *clocks,
		       struct r9a06g032_gate *g, int on)
{
	unsigned long flags;

	FUNC0(!g->gate);

	FUNC2(&clocks->lock, flags);
	FUNC1(clocks, g->gate, on);
	/* De-assert reset */
	if (g->reset)
		FUNC1(clocks, g->reset, 1);
	FUNC3(&clocks->lock, flags);

	/* Hardware manual recommends 5us delay after enabling clock & reset */
	FUNC4(5);

	/* If the peripheral is memory mapped (i.e. an AXI slave), there is an
	 * associated SLVRDY bit in the System Controller that needs to be set
	 * so that the FlexWAY bus fabric passes on the read/write requests.
	 */
	if (g->ready || g->midle) {
		FUNC2(&clocks->lock, flags);
		if (g->ready)
			FUNC1(clocks, g->ready, on);
		/* Clear 'Master Idle Request' bit */
		if (g->midle)
			FUNC1(clocks, g->midle, !on);
		FUNC3(&clocks->lock, flags);
	}
	/* Note: We don't wait for FlexWAY Socket Connection signal */
}