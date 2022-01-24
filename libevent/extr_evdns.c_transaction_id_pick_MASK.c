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
typedef  int u16 ;
typedef  int /*<<< orphan*/  trans_id ;
struct evdns_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct evdns_base*,int) ; 

__attribute__((used)) static u16
FUNC3(struct evdns_base *base) {
	FUNC0(base);
	for (;;) {
		u16 trans_id;
		FUNC1(&trans_id, sizeof(trans_id));

		if (trans_id == 0xffff) continue;
		/* now check to see if that id is already inflight */
		if (FUNC2(base, trans_id) == NULL)
			return trans_id;
	}
}