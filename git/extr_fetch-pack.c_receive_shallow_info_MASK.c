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
struct shallow_info {int /*<<< orphan*/  shallow; scalar_t__ nr_theirs; scalar_t__ nr_ours; } ;
struct packet_reader {scalar_t__ line; scalar_t__ status; } ;
struct oid_array {int nr; int /*<<< orphan*/ * oid; } ;
struct object_id {int dummy; } ;
struct fetch_pack_args {int deepen; } ;

/* Variables and functions */
 scalar_t__ PACKET_READ_DELIM ; 
 scalar_t__ PACKET_READ_FLUSH ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * alternate_shallow_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct oid_array*,struct object_id*) ; 
 scalar_t__ FUNC5 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (struct shallow_info*,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC8 (struct packet_reader*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shallow_lock ; 
 scalar_t__ FUNC12 (scalar_t__,char*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC13 (struct object_id*) ; 

__attribute__((used)) static void FUNC14(struct fetch_pack_args *args,
				 struct packet_reader *reader,
				 struct oid_array *shallows,
				 struct shallow_info *si)
{
	int unshallow_received = 0;

	FUNC8(reader, "shallow-info", 0);
	while (FUNC5(reader) == PACKET_READ_NORMAL) {
		const char *arg;
		struct object_id oid;

		if (FUNC12(reader->line, "shallow ", &arg)) {
			if (FUNC2(arg, &oid))
				FUNC1(FUNC0("invalid shallow line: %s"), reader->line);
			FUNC4(shallows, &oid);
			continue;
		}
		if (FUNC12(reader->line, "unshallow ", &arg)) {
			if (FUNC2(arg, &oid))
				FUNC1(FUNC0("invalid unshallow line: %s"), reader->line);
			if (!FUNC3(the_repository, &oid))
				FUNC1(FUNC0("object not found: %s"), reader->line);
			/* make sure that it is parsed as shallow */
			if (!FUNC6(the_repository, &oid))
				FUNC1(FUNC0("error in object: %s"), reader->line);
			if (FUNC13(&oid))
				FUNC1(FUNC0("no shallow found: %s"), reader->line);
			unshallow_received = 1;
			continue;
		}
		FUNC1(FUNC0("expected shallow/unshallow, got %s"), reader->line);
	}

	if (reader->status != PACKET_READ_FLUSH &&
	    reader->status != PACKET_READ_DELIM)
		FUNC1(FUNC0("error processing shallow info: %d"), reader->status);

	if (args->deepen || unshallow_received) {
		/*
		 * Treat these as shallow lines caused by our depth settings.
		 * In v0, these lines cannot cause refs to be rejected; do the
		 * same.
		 */
		int i;

		for (i = 0; i < shallows->nr; i++)
			FUNC9(the_repository, &shallows->oid[i]);
		FUNC10(&shallow_lock, &alternate_shallow_file,
					NULL);
		args->deepen = 1;
	} else if (shallows->nr) {
		/*
		 * Treat these as shallow lines caused by the remote being
		 * shallow. In v0, remote refs that reach these objects are
		 * rejected (unless --update-shallow is set); do the same.
		 */
		FUNC7(si, shallows);
		if (si->nr_ours || si->nr_theirs)
			alternate_shallow_file =
				FUNC11(si->shallow);
		else
			alternate_shallow_file = NULL;
	} else {
		alternate_shallow_file = NULL;
	}
}