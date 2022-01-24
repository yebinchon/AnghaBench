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
struct shallow_info {int dummy; } ;
struct repository {int dummy; } ;
struct ref {int dummy; } ;
struct packet_reader {int use_sideband; char* me; } ;
struct oidset {int dummy; } ;
struct oid_array {int dummy; } ;
struct fetch_pack_args {int deepen; int /*<<< orphan*/  negotiation_tips; int /*<<< orphan*/  no_dependents; int /*<<< orphan*/  deepen_not; int /*<<< orphan*/  deepen_since; int /*<<< orphan*/  depth; } ;
struct fetch_negotiator {int /*<<< orphan*/  (* release ) (struct fetch_negotiator*) ;} ;
typedef  enum fetch_state { ____Placeholder_fetch_state } fetch_state ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW_REACHABLE_SHA1 ; 
#define  FETCH_CHECK_LOCAL 132 
#define  FETCH_DONE 131 
#define  FETCH_GET_PACK 130 
#define  FETCH_PROCESS_ACKS 129 
#define  FETCH_SEND_REQUEST 128 
 int INITIAL_FLUSH ; 
 struct oidset OIDSET_INIT ; 
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct ref**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  allow_unadvertised_object_request ; 
 int /*<<< orphan*/  cmp_ref_by_name ; 
 struct ref* FUNC2 (struct ref const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fetch_pack_args*,struct ref**) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*,struct fetch_negotiator*) ; 
 int /*<<< orphan*/  FUNC6 (struct fetch_pack_args*,struct ref**,struct ref**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fetch_negotiator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fetch_pack_args*,int*,char**,struct ref**,int) ; 
 scalar_t__ FUNC9 (char*,int) ; 
 int /*<<< orphan*/  insert_one_alternate_object ; 
 int /*<<< orphan*/  FUNC10 (struct fetch_negotiator*,struct fetch_pack_args*,struct ref**) ; 
 int /*<<< orphan*/  FUNC11 (struct fetch_negotiator*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct oidset*) ; 
 int /*<<< orphan*/  FUNC13 (struct packet_reader*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct fetch_negotiator*,struct packet_reader*,struct oidset*) ; 
 int /*<<< orphan*/  FUNC15 (struct packet_reader*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct fetch_pack_args*,struct packet_reader*,struct oid_array*,struct shallow_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct packet_reader*,struct ref**,int) ; 
 int /*<<< orphan*/  ref_compare_name ; 
 int /*<<< orphan*/  FUNC18 (struct fetch_negotiator*,int,struct fetch_pack_args*,struct ref*,struct oidset*,int*,int*,int) ; 
 scalar_t__ FUNC19 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ref**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct fetch_negotiator*) ; 
 struct repository* the_repository ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,struct repository*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,struct repository*) ; 
 int use_sideband ; 

__attribute__((used)) static struct ref *FUNC24(struct fetch_pack_args *args,
				    int fd[2],
				    const struct ref *orig_ref,
				    struct ref **sought, int nr_sought,
				    struct oid_array *shallows,
				    struct shallow_info *si,
				    char **pack_lockfile)
{
	struct repository *r = the_repository;
	struct ref *ref = FUNC2(orig_ref);
	enum fetch_state state = FETCH_CHECK_LOCAL;
	struct oidset common = OIDSET_INIT;
	struct packet_reader reader;
	int in_vain = 0, negotiation_started = 0;
	int haves_to_send = INITIAL_FLUSH;
	struct fetch_negotiator negotiator;
	FUNC5(r, &negotiator);
	FUNC13(&reader, fd[0], NULL, 0,
			   PACKET_READ_CHOMP_NEWLINE |
			   PACKET_READ_DIE_ON_ERR_PACKET);
	if (FUNC9("GIT_TEST_SIDEBAND_ALL", 1) &&
	    FUNC19("fetch", "sideband-all", 0)) {
		reader.use_sideband = 1;
		reader.me = "fetch-pack";
	}

	while (state != FETCH_DONE) {
		switch (state) {
		case FETCH_CHECK_LOCAL:
			FUNC20(&ref, ref_compare_name);
			FUNC0(sought, nr_sought, cmp_ref_by_name);

			/* v2 supports these by default */
			allow_unadvertised_object_request |= ALLOW_REACHABLE_SHA1;
			use_sideband = 2;
			if (args->depth > 0 || args->deepen_since || args->deepen_not)
				args->deepen = 1;

			/* Filter 'ref' by 'sought' and those that aren't local */
			if (!args->no_dependents) {
				FUNC10(&negotiator, args, &ref);
				FUNC6(args, &ref, sought, nr_sought);
				if (FUNC4(args, &ref))
					state = FETCH_DONE;
				else
					state = FETCH_SEND_REQUEST;

				FUNC11(&negotiator, args->negotiation_tips);
				FUNC7(&negotiator,
							  insert_one_alternate_object);
			} else {
				FUNC6(args, &ref, sought, nr_sought);
				state = FETCH_SEND_REQUEST;
			}
			break;
		case FETCH_SEND_REQUEST:
			if (!negotiation_started) {
				negotiation_started = 1;
				FUNC22("fetch-pack",
						    "negotiation_v2",
						    the_repository);
			}
			if (FUNC18(&negotiator, fd[1], args, ref,
					       &common,
					       &haves_to_send, &in_vain,
					       reader.use_sideband))
				state = FETCH_GET_PACK;
			else
				state = FETCH_PROCESS_ACKS;
			break;
		case FETCH_PROCESS_ACKS:
			/* Process ACKs/NAKs */
			switch (FUNC14(&negotiator, &reader, &common)) {
			case 2:
				state = FETCH_GET_PACK;
				break;
			case 1:
				in_vain = 0;
				/* fallthrough */
			default:
				state = FETCH_SEND_REQUEST;
				break;
			}
			break;
		case FETCH_GET_PACK:
			FUNC23("fetch-pack",
					    "negotiation_v2",
					    the_repository);
			/* Check for shallow-info section */
			if (FUNC15(&reader, "shallow-info", 1))
				FUNC16(args, &reader, shallows, si);

			if (FUNC15(&reader, "wanted-refs", 1))
				FUNC17(&reader, sought, nr_sought);

			/* get the pack */
			FUNC15(&reader, "packfile", 0);
			if (FUNC8(args, fd, pack_lockfile, sought, nr_sought))
				FUNC3(FUNC1("git fetch-pack: fetch failed."));

			state = FETCH_DONE;
			break;
		case FETCH_DONE:
			continue;
		}
	}

	negotiator.release(&negotiator);
	FUNC12(&common);
	return ref;
}