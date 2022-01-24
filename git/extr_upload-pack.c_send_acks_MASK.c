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
struct packet_writer {int dummy; } ;
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct object_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct object_array const*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_writer*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct packet_writer *writer, struct oid_array *acks,
		     const struct object_array *have_obj,
		     struct object_array *want_obj)
{
	int i;

	FUNC2(writer, "acknowledgments\n");

	/* Send Acks */
	if (!acks->nr)
		FUNC2(writer, "NAK\n");

	for (i = 0; i < acks->nr; i++) {
		FUNC2(writer, "ACK %s\n",
				    FUNC0(&acks->oid[i]));
	}

	if (FUNC1(have_obj, want_obj)) {
		/* Send Ready */
		FUNC2(writer, "ready\n");
		return 1;
	}

	return 0;
}