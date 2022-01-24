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
typedef  size_t u32 ;
struct hwrng {int dummy; } ;
struct bcm2835_rng_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNG_DATA ; 
 int /*<<< orphan*/  RNG_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct bcm2835_rng_priv*,int /*<<< orphan*/ ) ; 
 struct bcm2835_rng_priv* FUNC2 (struct hwrng*) ; 

__attribute__((used)) static int FUNC3(struct hwrng *rng, void *buf, size_t max,
			       bool wait)
{
	struct bcm2835_rng_priv *priv = FUNC2(rng);
	u32 max_words = max / sizeof(u32);
	u32 num_words, count;

	while ((FUNC1(priv, RNG_STATUS) >> 24) == 0) {
		if (!wait)
			return 0;
		FUNC0();
	}

	num_words = FUNC1(priv, RNG_STATUS) >> 24;
	if (num_words > max_words)
		num_words = max_words;

	for (count = 0; count < num_words; count++)
		((u32 *)buf)[count] = FUNC1(priv, RNG_DATA);

	return num_words * sizeof(u32);
}