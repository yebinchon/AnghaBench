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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 unsigned int RATIO_REG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC2 (struct cs2000_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct cs2000_priv *priv, int ch)
{
	s32 tmp;
	u32 val;
	unsigned int i;

	val = 0;
	for (i = 0; i < RATIO_REG_SIZE; i++) {
		tmp = FUNC2(priv, FUNC0(ch, i));
		if (tmp < 0)
			return 0;

		val |= FUNC1(tmp, i);
	}

	return val;
}