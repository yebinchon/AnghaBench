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
struct serve_options {scalar_t__ stateless_rpc; scalar_t__ advertise_capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(struct serve_options *options)
{
	if (options->advertise_capabilities || !options->stateless_rpc) {
		/* serve by default supports v2 */
		FUNC1(1, "version 2\n");

		FUNC0();
		/*
		 * If only the list of capabilities was requested exit
		 * immediately after advertising capabilities
		 */
		if (options->advertise_capabilities)
			return;
	}

	/*
	 * If stateless-rpc was requested then exit after
	 * a single request/response exchange
	 */
	if (options->stateless_rpc) {
		FUNC2();
	} else {
		for (;;)
			if (FUNC2())
				break;
	}
}