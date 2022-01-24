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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct hostinfo *hi)
{
	FUNC0(&hi->hostname);
	FUNC0(&hi->canon_hostname);
	FUNC0(&hi->ip_address);
	FUNC0(&hi->tcp_port);
}