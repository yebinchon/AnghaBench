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
typedef  int /*<<< orphan*/  u32 ;
struct cs2000_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 unsigned int RATIO_REG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cs2000_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cs2000_priv *priv,
			    int ch, u32 rate_in, u32 rate_out)
{
	u32 val;
	unsigned int i;
	int ret;

	if (FUNC0(ch))
		return -EINVAL;

	val = FUNC3(rate_in, rate_out);
	for (i = 0; i < RATIO_REG_SIZE; i++) {
		ret = FUNC4(priv,
				   FUNC1(ch, i),
				   FUNC2(val, i));
		if (ret < 0)
			return ret;
	}

	return 0;
}