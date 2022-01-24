#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct shallow_info {int dummy; } ;
struct ref {int dummy; } ;
struct oid_array {scalar_t__ nr; } ;
struct TYPE_2__ {int /*<<< orphan*/  choice; } ;
struct fetch_pack_args {int connectivity_checked; scalar_t__ deepen; int /*<<< orphan*/  cloning; TYPE_1__ filter_options; scalar_t__ no_dependents; } ;
struct check_connected_options {int is_deepening_fetch; int /*<<< orphan*/  shallow_file; } ;
typedef  int /*<<< orphan*/  si ;
typedef  enum protocol_version { ____Placeholder_protocol_version } protocol_version ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct check_connected_options CHECK_CONNECTED_INIT ; 
 struct oid_array OID_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  alternate_shallow_file ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct ref**,struct check_connected_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ref* FUNC5 (struct fetch_pack_args*,int*,struct ref const*,struct ref**,int,struct shallow_info*,char**) ; 
 struct ref* FUNC6 (struct fetch_pack_args*,int*,struct ref const*,struct ref**,int,struct oid_array*,struct shallow_info*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct ref*) ; 
 int /*<<< orphan*/  iterate_ref_map ; 
 int /*<<< orphan*/  FUNC10 (struct shallow_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct oid_array*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct shallow_info*,struct oid_array*) ; 
 int protocol_v2 ; 
 int FUNC15 (struct ref**,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shallow_lock ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC18 (struct fetch_pack_args*,struct ref**,int,struct shallow_info*) ; 

struct ref *FUNC19(struct fetch_pack_args *args,
		       int fd[],
		       const struct ref *ref,
		       struct ref **sought, int nr_sought,
		       struct oid_array *shallow,
		       char **pack_lockfile,
		       enum protocol_version version)
{
	struct ref *ref_cpy;
	struct shallow_info si;
	struct oid_array shallows_scratch = OID_ARRAY_INIT;

	FUNC8();
	if (nr_sought)
		nr_sought = FUNC15(sought, nr_sought);

	if (args->no_dependents && !args->filter_options.choice) {
		/*
		 * The protocol does not support requesting that only the
		 * wanted objects be sent, so approximate this by setting a
		 * "blob:none" filter if no filter is already set. This works
		 * for all object types: note that wanted blobs will still be
		 * sent because they are directly specified as a "want".
		 *
		 * NEEDSWORK: Add an option in the protocol to request that
		 * only the wanted objects be sent, and implement it.
		 */
		FUNC13(&args->filter_options, "blob:none");
	}

	if (version != protocol_v2 && !ref) {
		FUNC12(fd[1]);
		FUNC4(FUNC1("no matching remote head"));
	}
	if (version == protocol_v2) {
		if (shallow->nr)
			FUNC0("Protocol V2 does not provide shallows at this point in the fetch");
		FUNC10(&si, 0, sizeof(si));
		ref_cpy = FUNC6(args, fd, ref, sought, nr_sought,
					   &shallows_scratch, &si,
					   pack_lockfile);
	} else {
		FUNC14(&si, shallow);
		ref_cpy = FUNC5(args, fd, ref, sought, nr_sought,
					&si, pack_lockfile);
	}
	FUNC16(the_repository);

	if (!args->cloning && args->deepen) {
		struct check_connected_options opt = CHECK_CONNECTED_INIT;
		struct ref *iterator = ref_cpy;
		opt.shallow_file = alternate_shallow_file;
		if (args->deepen)
			opt.is_deepening_fetch = 1;
		if (FUNC2(iterate_ref_map, &iterator, &opt)) {
			FUNC7(FUNC1("remote did not send all necessary objects"));
			FUNC9(ref_cpy);
			ref_cpy = NULL;
			FUNC17(&shallow_lock);
			goto cleanup;
		}
		args->connectivity_checked = 1;
	}

	FUNC18(args, sought, nr_sought, &si);
cleanup:
	FUNC3(&si);
	FUNC11(&shallows_scratch);
	return ref_cpy;
}