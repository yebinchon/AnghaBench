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
typedef  int /*<<< orphan*/  timestamp_t ;
struct string_list {int dummy; } ;
struct packet_writer {int dummy; } ;
struct packet_reader {int /*<<< orphan*/  line; } ;
struct object_id {int dummy; } ;
struct object_array {scalar_t__ nr; } ;
struct object {int flags; } ;

/* Variables and functions */
 int ALLOW_ANY_SHA1 ; 
 int /*<<< orphan*/  DEFAULT_PACKET_MAX ; 
 int /*<<< orphan*/  LARGE_PACKET_MAX ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 scalar_t__ PACKET_READ_NORMAL ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int WANTED ; 
 int /*<<< orphan*/  FUNC0 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 scalar_t__ allow_filter ; 
 int allow_unadvertised_object_request ; 
 int /*<<< orphan*/  FUNC1 (struct object_array*,struct packet_writer*) ; 
 scalar_t__ daemon_mode ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int filter_capability_requested ; 
 int /*<<< orphan*/  filter_options ; 
 scalar_t__ FUNC3 (struct object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int multi_ack ; 
 int no_done ; 
 int no_progress ; 
 int /*<<< orphan*/  FUNC5 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct packet_reader*) ; 
 int /*<<< orphan*/  FUNC9 (struct packet_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct packet_writer*,int) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 struct object* FUNC13 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC14 (char const*,struct object_id*,char const**) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct string_list*,int*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct object_array*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (struct packet_writer*,int,int,int /*<<< orphan*/ ,struct string_list*,int,struct object_array*,struct object_array*) ; 
 scalar_t__ shallow_nr ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 
 int use_include_tag ; 
 int use_ofs_delta ; 
 int /*<<< orphan*/  use_sideband ; 
 int use_thin_pack ; 

__attribute__((used)) static void FUNC22(struct packet_reader *reader, struct object_array *want_obj)
{
	struct object_array shallows = OBJECT_ARRAY_INIT;
	struct string_list deepen_not = STRING_LIST_INIT_DUP;
	int depth = 0;
	int has_non_tip = 0;
	timestamp_t deepen_since = 0;
	int deepen_rev_list = 0;
	int deepen_relative = 0;
	struct packet_writer writer;

	shallow_nr = 0;
	FUNC10(&writer, 1);
	for (;;) {
		struct object *o;
		const char *features;
		struct object_id oid_buf;
		const char *arg;

		FUNC19();
		if (FUNC8(reader) != PACKET_READ_NORMAL)
			break;

		if (FUNC18(reader->line, &shallows))
			continue;
		if (FUNC15(reader->line, &depth))
			continue;
		if (FUNC17(reader->line, &deepen_since, &deepen_rev_list))
			continue;
		if (FUNC16(reader->line, &deepen_not, &deepen_rev_list))
			continue;

		if (FUNC21(reader->line, "filter ", &arg)) {
			if (!filter_capability_requested)
				FUNC2("git upload-pack: filtering capability not negotiated");
			FUNC4(&filter_options);
			FUNC12(&filter_options, arg);
			continue;
		}

		if (!FUNC21(reader->line, "want ", &arg) ||
		    FUNC14(arg, &oid_buf, &features))
			FUNC2("git upload-pack: protocol error, "
			    "expected to get object ID, not '%s'", reader->line);

		if (FUNC11(features, "deepen-relative"))
			deepen_relative = 1;
		if (FUNC11(features, "multi_ack_detailed"))
			multi_ack = 2;
		else if (FUNC11(features, "multi_ack"))
			multi_ack = 1;
		if (FUNC11(features, "no-done"))
			no_done = 1;
		if (FUNC11(features, "thin-pack"))
			use_thin_pack = 1;
		if (FUNC11(features, "ofs-delta"))
			use_ofs_delta = 1;
		if (FUNC11(features, "side-band-64k"))
			use_sideband = LARGE_PACKET_MAX;
		else if (FUNC11(features, "side-band"))
			use_sideband = DEFAULT_PACKET_MAX;
		if (FUNC11(features, "no-progress"))
			no_progress = 1;
		if (FUNC11(features, "include-tag"))
			use_include_tag = 1;
		if (allow_filter && FUNC11(features, "filter"))
			filter_capability_requested = 1;

		o = FUNC13(the_repository, &oid_buf);
		if (!o) {
			FUNC9(&writer,
					    "upload-pack: not our ref %s",
					    FUNC6(&oid_buf));
			FUNC2("git upload-pack: not our ref %s",
			    FUNC6(&oid_buf));
		}
		if (!(o->flags & WANTED)) {
			o->flags |= WANTED;
			if (!((allow_unadvertised_object_request & ALLOW_ANY_SHA1) == ALLOW_ANY_SHA1
			      || FUNC3(o)))
				has_non_tip = 1;
			FUNC0(o, NULL, want_obj);
		}
	}

	/*
	 * We have sent all our refs already, and the other end
	 * should have chosen out of them. When we are operating
	 * in the stateless RPC mode, however, their choice may
	 * have been based on the set of older refs advertised
	 * by another process that handled the initial request.
	 */
	if (has_non_tip)
		FUNC1(want_obj, &writer);

	if (!use_sideband && daemon_mode)
		no_progress = 1;

	if (depth == 0 && !deepen_rev_list && shallows.nr == 0)
		return;

	if (FUNC20(&writer, depth, deepen_rev_list, deepen_since,
			      &deepen_not, deepen_relative, &shallows,
			      want_obj))
		FUNC7(1);
	FUNC5(&shallows);
}