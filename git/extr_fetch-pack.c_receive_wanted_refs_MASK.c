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
struct ref {int /*<<< orphan*/  old_oid; } ;
struct packet_reader {scalar_t__ line; scalar_t__ status; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ PACKET_READ_DELIM ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ref** FUNC1 (char const*,struct ref**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_name_ref ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC4 (struct packet_reader*) ; 
 scalar_t__ FUNC5 (scalar_t__,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct packet_reader*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct packet_reader *reader,
				struct ref **sought, int nr_sought)
{
	FUNC6(reader, "wanted-refs", 0);
	while (FUNC4(reader) == PACKET_READ_NORMAL) {
		struct object_id oid;
		const char *end;
		struct ref **found;

		if (FUNC5(reader->line, &oid, &end) || *end++ != ' ')
			FUNC2(FUNC0("expected wanted-ref, got '%s'"), reader->line);

		found = FUNC1(end, sought, nr_sought, sizeof(*sought),
				cmp_name_ref);
		if (!found)
			FUNC2(FUNC0("unexpected wanted-ref: '%s'"), reader->line);
		FUNC3(&(*found)->old_oid, &oid);
	}

	if (reader->status != PACKET_READ_DELIM)
		FUNC2(FUNC0("error processing wanted refs: %d"), reader->status);
}