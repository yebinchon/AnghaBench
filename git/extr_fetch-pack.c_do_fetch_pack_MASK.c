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
struct shallow_info {int /*<<< orphan*/  shallow; scalar_t__ nr_theirs; scalar_t__ nr_ours; } ;
struct repository {int dummy; } ;
struct ref {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ choice; } ;
struct fetch_pack_args {scalar_t__ depth; int deepen; scalar_t__ stateless_rpc; int /*<<< orphan*/  keep_pack; int /*<<< orphan*/  no_dependents; scalar_t__ deepen_relative; scalar_t__ deepen_not; scalar_t__ deepen_since; TYPE_1__ filter_options; scalar_t__ include_tag; scalar_t__ no_progress; scalar_t__ use_thin_pack; } ;
struct fetch_negotiator {int /*<<< orphan*/  (* release ) (struct fetch_negotiator*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW_REACHABLE_SHA1 ; 
 int /*<<< orphan*/  ALLOW_TIP_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (struct ref**,int,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int agent_supported ; 
 int /*<<< orphan*/  allow_unadvertised_object_request ; 
 int /*<<< orphan*/ * alternate_shallow_file ; 
 int /*<<< orphan*/  cmp_ref_by_name ; 
 struct ref* FUNC2 (struct ref const*) ; 
 int deepen_not_ok ; 
 int deepen_since_ok ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct fetch_pack_args*,struct ref**) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,struct fetch_negotiator*) ; 
 int /*<<< orphan*/  FUNC6 (struct fetch_pack_args*,struct ref**,struct ref**,int) ; 
 scalar_t__ FUNC7 (struct fetch_negotiator*,struct fetch_pack_args*,int*,struct object_id*,struct ref*) ; 
 scalar_t__ FUNC8 (struct fetch_pack_args*,int*,char**,struct ref**,int) ; 
 scalar_t__ FUNC9 (struct repository*) ; 
 int /*<<< orphan*/  FUNC10 (struct fetch_negotiator*,struct fetch_pack_args*,struct ref**) ; 
 int multi_ack ; 
 int no_done ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ prefer_ofs_delta ; 
 int /*<<< orphan*/  FUNC12 (struct fetch_pack_args*,char*,...) ; 
 int /*<<< orphan*/  ref_compare_name ; 
 char* FUNC13 (char*,int*) ; 
 scalar_t__ FUNC14 (char*) ; 
 int server_supports_filtering ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shallow_lock ; 
 int /*<<< orphan*/  FUNC17 (struct ref**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct fetch_negotiator*) ; 
 struct repository* the_repository ; 
 int use_sideband ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static struct ref *FUNC20(struct fetch_pack_args *args,
				 int fd[2],
				 const struct ref *orig_ref,
				 struct ref **sought, int nr_sought,
				 struct shallow_info *si,
				 char **pack_lockfile)
{
	struct repository *r = the_repository;
	struct ref *ref = FUNC2(orig_ref);
	struct object_id oid;
	const char *agent_feature;
	int agent_len;
	struct fetch_negotiator negotiator;
	FUNC5(r, &negotiator);

	FUNC17(&ref, ref_compare_name);
	FUNC0(sought, nr_sought, cmp_ref_by_name);

	if ((agent_feature = FUNC13("agent", &agent_len))) {
		agent_supported = 1;
		if (agent_len)
			FUNC12(args, FUNC1("Server version is %.*s"),
				      agent_len, agent_feature);
	}

	if (FUNC14("shallow"))
		FUNC12(args, FUNC1("Server supports %s"), "shallow");
	else if (args->depth > 0 || FUNC9(r))
		FUNC3(FUNC1("Server does not support shallow clients"));
	if (args->depth > 0 || args->deepen_since || args->deepen_not)
		args->deepen = 1;
	if (FUNC14("multi_ack_detailed")) {
		FUNC12(args, FUNC1("Server supports %s"), "multi_ack_detailed");
		multi_ack = 2;
		if (FUNC14("no-done")) {
			FUNC12(args, FUNC1("Server supports %s"), "no-done");
			if (args->stateless_rpc)
				no_done = 1;
		}
	}
	else if (FUNC14("multi_ack")) {
		FUNC12(args, FUNC1("Server supports %s"), "multi_ack");
		multi_ack = 1;
	}
	if (FUNC14("side-band-64k")) {
		FUNC12(args, FUNC1("Server supports %s"), "side-band-64k");
		use_sideband = 2;
	}
	else if (FUNC14("side-band")) {
		FUNC12(args, FUNC1("Server supports %s"), "side-band");
		use_sideband = 1;
	}
	if (FUNC14("allow-tip-sha1-in-want")) {
		FUNC12(args, FUNC1("Server supports %s"), "allow-tip-sha1-in-want");
		allow_unadvertised_object_request |= ALLOW_TIP_SHA1;
	}
	if (FUNC14("allow-reachable-sha1-in-want")) {
		FUNC12(args, FUNC1("Server supports %s"), "allow-reachable-sha1-in-want");
		allow_unadvertised_object_request |= ALLOW_REACHABLE_SHA1;
	}
	if (FUNC14("thin-pack"))
		FUNC12(args, FUNC1("Server supports %s"), "thin-pack");
	else
		args->use_thin_pack = 0;
	if (FUNC14("no-progress"))
		FUNC12(args, FUNC1("Server supports %s"), "no-progress");
	else
		args->no_progress = 0;
	if (FUNC14("include-tag"))
		FUNC12(args, FUNC1("Server supports %s"), "include-tag");
	else
		args->include_tag = 0;
	if (FUNC14("ofs-delta"))
		FUNC12(args, FUNC1("Server supports %s"), "ofs-delta");
	else
		prefer_ofs_delta = 0;

	if (FUNC14("filter")) {
		server_supports_filtering = 1;
		FUNC12(args, FUNC1("Server supports %s"), "filter");
	} else if (args->filter_options.choice) {
		FUNC19("filtering not recognized by server, ignoring");
	}

	if (FUNC14("deepen-since")) {
		FUNC12(args, FUNC1("Server supports %s"), "deepen-since");
		deepen_since_ok = 1;
	} else if (args->deepen_since)
		FUNC3(FUNC1("Server does not support --shallow-since"));
	if (FUNC14("deepen-not")) {
		FUNC12(args, FUNC1("Server supports %s"), "deepen-not");
		deepen_not_ok = 1;
	} else if (args->deepen_not)
		FUNC3(FUNC1("Server does not support --shallow-exclude"));
	if (FUNC14("deepen-relative"))
		FUNC12(args, FUNC1("Server supports %s"), "deepen-relative");
	else if (args->deepen_relative)
		FUNC3(FUNC1("Server does not support --deepen"));

	if (!args->no_dependents) {
		FUNC10(&negotiator, args, &ref);
		FUNC6(args, &ref, sought, nr_sought);
		if (FUNC4(args, &ref)) {
			FUNC11(fd[1]);
			goto all_done;
		}
	} else {
		FUNC6(args, &ref, sought, nr_sought);
	}
	if (FUNC7(&negotiator, args, fd, &oid, ref) < 0)
		if (!args->keep_pack)
			/* When cloning, it is not unusual to have
			 * no common commit.
			 */
			FUNC19(FUNC1("no common commits"));

	if (args->stateless_rpc)
		FUNC11(fd[1]);
	if (args->deepen)
		FUNC15(&shallow_lock, &alternate_shallow_file,
					NULL);
	else if (si->nr_ours || si->nr_theirs)
		alternate_shallow_file = FUNC16(si->shallow);
	else
		alternate_shallow_file = NULL;
	if (FUNC8(args, fd, pack_lockfile, sought, nr_sought))
		FUNC3(FUNC1("git fetch-pack: fetch failed."));

 all_done:
	negotiator.release(&negotiator);
	return ref;
}