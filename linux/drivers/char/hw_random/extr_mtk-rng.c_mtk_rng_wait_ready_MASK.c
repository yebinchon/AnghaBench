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
struct mtk_rng {scalar_t__ base; } ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 scalar_t__ RNG_CTRL ; 
 int RNG_READY ; 
 int /*<<< orphan*/  TIMEOUT_POLL ; 
 int /*<<< orphan*/  USEC_POLL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mtk_rng* FUNC2 (struct hwrng*) ; 

__attribute__((used)) static bool FUNC3(struct hwrng *rng, bool wait)
{
	struct mtk_rng *priv = FUNC2(rng);
	int ready;

	ready = FUNC0(priv->base + RNG_CTRL) & RNG_READY;
	if (!ready && wait)
		FUNC1(priv->base + RNG_CTRL, ready,
					  ready & RNG_READY, USEC_POLL,
					  TIMEOUT_POLL);
	return !!ready;
}