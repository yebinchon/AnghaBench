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
struct el_subpacket {scalar_t__ length; } ;

/* Variables and functions */
 struct el_subpacket* FUNC0 (struct el_subpacket*) ; 
 int /*<<< orphan*/  err_print_prefix ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct el_subpacket *header, int packet_count)
{
	struct el_subpacket *subpacket;
	int i;

	subpacket = (struct el_subpacket *)
		((unsigned long)header + header->length);

	for (i = 0; subpacket && i < packet_count; i++) {
		FUNC1("%sPROCESSING SUBPACKET %d\n", err_print_prefix, i);
		subpacket = FUNC0(subpacket);
	}
}