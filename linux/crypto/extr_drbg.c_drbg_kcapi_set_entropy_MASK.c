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
struct drbg_state {int /*<<< orphan*/  drbg_mutex; int /*<<< orphan*/  test_data; } ;
struct crypto_rng {int dummy; } ;

/* Variables and functions */
 struct drbg_state* FUNC0 (struct crypto_rng*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct crypto_rng *tfm,
				   const u8 *data, unsigned int len)
{
	struct drbg_state *drbg = FUNC0(tfm);

	FUNC2(&drbg->drbg_mutex);
	FUNC1(&drbg->test_data, data, len);
	FUNC3(&drbg->drbg_mutex);
}