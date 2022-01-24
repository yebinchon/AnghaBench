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
struct sfe_ipv4_connection {int dummy; } ;
struct sfe_connection_create {int protocol; } ;

/* Variables and functions */
#define  IPPROTO_TCP 128 
 int /*<<< orphan*/  FUNC0 (struct sfe_ipv4_connection*,struct sfe_connection_create*) ; 

__attribute__((used)) static void
FUNC1(struct sfe_ipv4_connection *c,
			       struct sfe_connection_create *sic)
{
	switch (sic->protocol) {
	case IPPROTO_TCP:
		FUNC0(c, sic);
		break;
	}
}