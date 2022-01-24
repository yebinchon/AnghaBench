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
typedef  int /*<<< orphan*/  u8 ;
struct hwrng {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC2(struct hwrng *rng, void *data, size_t max, bool wait)
{
	size_t len = max <= PAGE_SIZE ? max : PAGE_SIZE;

	FUNC1((u8 *) data, len);

	FUNC0("trng_hwrng_read()=%zu\n", len);

	return len;
}