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
struct nuport_mac_priv {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  MII_ADDR_REG ; 
 int MII_BUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int jiffies ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct nuport_mac_priv *priv)
{
	unsigned long curr;
	unsigned long finish = jiffies + 3 * HZ;

	do {
		curr = jiffies;
		if (!(FUNC1(MII_ADDR_REG) & MII_BUSY))
			return 0;
		FUNC0();
	} while (!FUNC2(curr, finish));

	return -EBUSY;
}