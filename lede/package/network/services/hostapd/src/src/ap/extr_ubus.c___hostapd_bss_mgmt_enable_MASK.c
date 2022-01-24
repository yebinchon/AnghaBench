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
typedef  int uint32_t ;
struct hostapd_data {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int __BSS_MGMT_EN_MAX ; 
 int FUNC0 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct hostapd_data *hapd, uint32_t flags)
{
	bool update = false;
	int i;

	for (i = 0; i < __BSS_MGMT_EN_MAX; i++) {
		if (!(flags & (1 << i)))
			continue;

		update |= FUNC0(hapd, i);
	}

	if (update)
		FUNC1(hapd->iface);
}