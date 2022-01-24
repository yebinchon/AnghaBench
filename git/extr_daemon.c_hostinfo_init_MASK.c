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
struct hostinfo {int /*<<< orphan*/  tcp_port; int /*<<< orphan*/  ip_address; int /*<<< orphan*/  canon_hostname; int /*<<< orphan*/  hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hostinfo *hi)
{
	FUNC0(hi, 0, sizeof(*hi));
	FUNC1(&hi->hostname, 0);
	FUNC1(&hi->canon_hostname, 0);
	FUNC1(&hi->ip_address, 0);
	FUNC1(&hi->tcp_port, 0);
}