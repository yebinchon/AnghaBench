#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int use_sideband; } ;
struct upload_pack_data {int done; int deepen_relative; TYPE_1__ writer; int /*<<< orphan*/  deepen_rev_list; int /*<<< orphan*/  deepen_not; int /*<<< orphan*/  deepen_since; int /*<<< orphan*/  depth; int /*<<< orphan*/  shallows; int /*<<< orphan*/  haves; int /*<<< orphan*/  wanted_refs; } ;
struct packet_reader {char* line; } ;
struct object_array {int dummy; } ;

/* Variables and functions */
 scalar_t__ PACKET_READ_FLUSH ; 
 scalar_t__ allow_filter ; 
 scalar_t__ allow_ref_in_want ; 
 scalar_t__ allow_sideband_all ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  filter_options ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int no_progress ; 
 scalar_t__ FUNC3 (struct packet_reader*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char const*,struct object_array*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char const*,int /*<<< orphan*/ *,struct object_array*) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int use_include_tag ; 
 int use_ofs_delta ; 
 int use_thin_pack ; 

__attribute__((used)) static void FUNC14(struct packet_reader *request,
			 struct upload_pack_data *data,
			 struct object_array *want_obj)
{
	while (FUNC3(request) != PACKET_READ_FLUSH) {
		const char *arg = request->line;
		const char *p;

		/* process want */
		if (FUNC6(&data->writer, arg, want_obj))
			continue;
		if (allow_ref_in_want &&
		    FUNC7(&data->writer, arg, &data->wanted_refs,
				   want_obj))
			continue;
		/* process have line */
		if (FUNC4(arg, &data->haves))
			continue;

		/* process args like thin-pack */
		if (!FUNC13(arg, "thin-pack")) {
			use_thin_pack = 1;
			continue;
		}
		if (!FUNC13(arg, "ofs-delta")) {
			use_ofs_delta = 1;
			continue;
		}
		if (!FUNC13(arg, "no-progress")) {
			no_progress = 1;
			continue;
		}
		if (!FUNC13(arg, "include-tag")) {
			use_include_tag = 1;
			continue;
		}
		if (!FUNC13(arg, "done")) {
			data->done = 1;
			continue;
		}

		/* Shallow related arguments */
		if (FUNC11(arg, &data->shallows))
			continue;
		if (FUNC8(arg, &data->depth))
			continue;
		if (FUNC10(arg, &data->deepen_since,
					 &data->deepen_rev_list))
			continue;
		if (FUNC9(arg, &data->deepen_not,
				       &data->deepen_rev_list))
			continue;
		if (!FUNC13(arg, "deepen-relative")) {
			data->deepen_relative = 1;
			continue;
		}

		if (allow_filter && FUNC12(arg, "filter ", &p)) {
			FUNC2(&filter_options);
			FUNC5(&filter_options, p);
			continue;
		}

		if ((FUNC1("GIT_TEST_SIDEBAND_ALL", 0) ||
		     allow_sideband_all) &&
		    !FUNC13(arg, "sideband-all")) {
			data->writer.use_sideband = 1;
			continue;
		}

		/* ignore unknown lines maybe? */
		FUNC0("unexpected line: '%s'", arg);
	}
}