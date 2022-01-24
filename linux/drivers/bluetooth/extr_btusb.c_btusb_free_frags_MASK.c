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
struct btusb_data {int /*<<< orphan*/  rxlock; int /*<<< orphan*/ * sco_skb; int /*<<< orphan*/ * acl_skb; int /*<<< orphan*/ * evt_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct btusb_data *data)
{
	unsigned long flags;

	FUNC1(&data->rxlock, flags);

	FUNC0(data->evt_skb);
	data->evt_skb = NULL;

	FUNC0(data->acl_skb);
	data->acl_skb = NULL;

	FUNC0(data->sco_skb);
	data->sco_skb = NULL;

	FUNC2(&data->rxlock, flags);
}