#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct transport {TYPE_3__* remote; int /*<<< orphan*/  url; TYPE_2__* vtable; int /*<<< orphan*/  push_options; TYPE_1__* smart_options; int /*<<< orphan*/  verbose; } ;
struct string_list {int dummy; } ;
struct repository {int dummy; } ;
struct refspec {int dummy; } ;
struct ref {int status; struct ref* next; int /*<<< orphan*/  new_oid; } ;
struct oid_array {int dummy; } ;
struct argv_array {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int (* push_refs ) (struct transport*,struct ref*,int) ;struct ref* (* get_refs_list ) (struct transport*,int,struct argv_array*) ;} ;
struct TYPE_6__ {scalar_t__ cas; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int MATCH_REFS_ALL ; 
 int MATCH_REFS_FOLLOW_TAGS ; 
 int MATCH_REFS_MIRROR ; 
 int MATCH_REFS_NONE ; 
 int MATCH_REFS_PRUNE ; 
 struct oid_array OID_ARRAY_INIT ; 
 int REF_STATUS_ATOMIC_PUSH_FAILED ; 
#define  REF_STATUS_NONE 130 
#define  REF_STATUS_OK 129 
#define  REF_STATUS_UPTODATE 128 
 struct string_list STRING_LIST_INIT_DUP ; 
 int TRANSPORT_PUSH_ALL ; 
 int TRANSPORT_PUSH_ATOMIC ; 
 int TRANSPORT_PUSH_DRY_RUN ; 
 int TRANSPORT_PUSH_FOLLOW_TAGS ; 
 int TRANSPORT_PUSH_FORCE ; 
 int TRANSPORT_PUSH_MIRROR ; 
 int TRANSPORT_PUSH_NO_HOOK ; 
 int TRANSPORT_PUSH_PORCELAIN ; 
 int TRANSPORT_PUSH_PRUNE ; 
 int TRANSPORT_PUSH_SET_UPSTREAM ; 
 int TRANSPORT_RECURSE_SUBMODULES_CHECK ; 
 int TRANSPORT_RECURSE_SUBMODULES_ONLY ; 
 int TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*,struct ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*) ; 
 scalar_t__ FUNC3 (struct ref*,struct refspec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*) ; 
 scalar_t__ FUNC6 (struct repository*,struct oid_array*,int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct ref* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct ref*,struct ref**,struct refspec*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct oid_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct oid_array*) ; 
 int FUNC15 (struct ref*) ; 
 int /*<<< orphan*/  FUNC16 (struct repository*,struct oid_array*,TYPE_3__*,struct refspec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct refspec*,struct argv_array*) ; 
 scalar_t__ FUNC19 (struct transport*,struct ref*) ; 
 int /*<<< orphan*/  FUNC20 (struct ref*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct transport*,struct ref*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC22 (struct string_list*,int /*<<< orphan*/ ) ; 
 struct ref* FUNC23 (struct transport*,int,struct argv_array*) ; 
 int FUNC24 (struct transport*,struct ref*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,struct repository*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,struct repository*) ; 
 scalar_t__ FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,struct ref*,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC29 (struct ref*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,struct ref*,int) ; 

int FUNC31(struct repository *r,
		   struct transport *transport,
		   struct refspec *rs, int flags,
		   unsigned int *reject_reasons)
{
	*reject_reasons = 0;

	if (FUNC27() < 0)
		return -1;

	if (transport->vtable->push_refs) {
		struct ref *remote_refs;
		struct ref *local_refs = FUNC8();
		int match_flags = MATCH_REFS_NONE;
		int verbose = (transport->verbose > 0);
		int quiet = (transport->verbose < 0);
		int porcelain = flags & TRANSPORT_PUSH_PORCELAIN;
		int pretend = flags & TRANSPORT_PUSH_DRY_RUN;
		int push_ret, ret, err;
		struct argv_array ref_prefixes = ARGV_ARRAY_INIT;

		if (FUNC3(local_refs, rs) < 0)
			return -1;

		FUNC18(rs, &ref_prefixes);

		FUNC25("transport_push", "get_refs_list", r);
		remote_refs = transport->vtable->get_refs_list(transport, 1,
							       &ref_prefixes);
		FUNC26("transport_push", "get_refs_list", r);

		FUNC2(&ref_prefixes);

		if (flags & TRANSPORT_PUSH_ALL)
			match_flags |= MATCH_REFS_ALL;
		if (flags & TRANSPORT_PUSH_MIRROR)
			match_flags |= MATCH_REFS_MIRROR;
		if (flags & TRANSPORT_PUSH_PRUNE)
			match_flags |= MATCH_REFS_PRUNE;
		if (flags & TRANSPORT_PUSH_FOLLOW_TAGS)
			match_flags |= MATCH_REFS_FOLLOW_TAGS;

		if (FUNC12(local_refs, &remote_refs, rs, match_flags))
			return -1;

		if (transport->smart_options &&
		    transport->smart_options->cas &&
		    !FUNC10(transport->smart_options->cas))
			FUNC1(transport->smart_options->cas,
				       transport->remote, remote_refs);

		FUNC20(remote_refs,
			flags & TRANSPORT_PUSH_MIRROR,
			flags & TRANSPORT_PUSH_FORCE);

		if (!(flags & TRANSPORT_PUSH_NO_HOOK))
			if (FUNC19(transport, remote_refs))
				return -1;

		if ((flags & (TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND |
			      TRANSPORT_RECURSE_SUBMODULES_ONLY)) &&
		    !FUNC9()) {
			struct ref *ref = remote_refs;
			struct oid_array commits = OID_ARRAY_INIT;

			FUNC25("transport_push", "push_submodules", r);
			for (; ref; ref = ref->next)
				if (!FUNC11(&ref->new_oid))
					FUNC13(&commits,
							  &ref->new_oid);

			if (!FUNC16(r,
						      &commits,
						      transport->remote,
						      rs,
						      transport->push_options,
						      pretend)) {
				FUNC14(&commits);
				FUNC26("transport_push", "push_submodules", r);
				FUNC4(FUNC0("failed to push all needed submodules"));
			}
			FUNC14(&commits);
			FUNC26("transport_push", "push_submodules", r);
		}

		if (((flags & TRANSPORT_RECURSE_SUBMODULES_CHECK) ||
		     ((flags & (TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND |
				TRANSPORT_RECURSE_SUBMODULES_ONLY)) &&
		      !pretend)) && !FUNC9()) {
			struct ref *ref = remote_refs;
			struct string_list needs_pushing = STRING_LIST_INIT_DUP;
			struct oid_array commits = OID_ARRAY_INIT;

			FUNC25("transport_push", "check_submodules", r);
			for (; ref; ref = ref->next)
				if (!FUNC11(&ref->new_oid))
					FUNC13(&commits,
							  &ref->new_oid);

			if (FUNC6(r,
						     &commits,
						     transport->remote->name,
						     &needs_pushing)) {
				FUNC14(&commits);
				FUNC26("transport_push", "check_submodules", r);
				FUNC5(&needs_pushing);
			}
			FUNC22(&needs_pushing, 0);
			FUNC14(&commits);
			FUNC26("transport_push", "check_submodules", r);
		}

		if (!(flags & TRANSPORT_RECURSE_SUBMODULES_ONLY)) {
			FUNC25("transport_push", "push_refs", r);
			push_ret = transport->vtable->push_refs(transport, remote_refs, flags);
			FUNC26("transport_push", "push_refs", r);
		} else
			push_ret = 0;
		err = FUNC15(remote_refs);
		ret = push_ret | err;

		if ((flags & TRANSPORT_PUSH_ATOMIC) && err) {
			struct ref *it;
			for (it = remote_refs; it; it = it->next)
				switch (it->status) {
				case REF_STATUS_NONE:
				case REF_STATUS_UPTODATE:
				case REF_STATUS_OK:
					it->status = REF_STATUS_ATOMIC_PUSH_FAILED;
					break;
				default:
					break;
				}
		}

		if (!quiet || err)
			FUNC28(transport->url, remote_refs,
					verbose | porcelain, porcelain,
					reject_reasons);

		if (flags & TRANSPORT_PUSH_SET_UPSTREAM)
			FUNC21(transport, remote_refs, pretend);

		if (!(flags & (TRANSPORT_PUSH_DRY_RUN |
			       TRANSPORT_RECURSE_SUBMODULES_ONLY))) {
			struct ref *ref;
			for (ref = remote_refs; ref; ref = ref->next)
				FUNC30(transport->remote, ref, verbose);
		}

		if (porcelain && !push_ret)
			FUNC17("Done");
		else if (!quiet && !ret && !FUNC29(remote_refs))
			FUNC7(stderr, "Everything up-to-date\n");

		return ret;
	}
	return 1;
}