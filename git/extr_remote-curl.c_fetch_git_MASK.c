#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct rpc_state {char* service_name; int gzip_request; } ;
struct ref {int /*<<< orphan*/ * name; int /*<<< orphan*/  old_oid; } ;
struct discovery {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
typedef  int /*<<< orphan*/  rpc ;
struct TYPE_6__ {int nr; TYPE_1__* items; } ;
struct TYPE_8__ {int verbosity; scalar_t__ filter; scalar_t__ no_dependents; scalar_t__ from_promisor; scalar_t__ depth; scalar_t__ deepen_relative; TYPE_2__ deepen_not; scalar_t__ deepen_since; int /*<<< orphan*/  progress; scalar_t__ update_shallow; scalar_t__ cloning; scalar_t__ check_self_contained_and_connected; scalar_t__ thin; scalar_t__ followtags; } ;
struct TYPE_7__ {char* buf; } ;
struct TYPE_5__ {scalar_t__ string; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__ options ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct rpc_state*,struct discovery*,int /*<<< orphan*/ ,struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 TYPE_3__ url ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct discovery *heads,
	int nr_heads, struct ref **to_fetch)
{
	struct rpc_state rpc;
	struct strbuf preamble = STRBUF_INIT;
	int i, err;
	struct argv_array args = ARGV_ARRAY_INIT;
	struct strbuf rpc_result = STRBUF_INIT;

	FUNC4(&args, "fetch-pack", "--stateless-rpc",
			 "--stdin", "--lock-pack", NULL);
	if (options.followtags)
		FUNC2(&args, "--include-tag");
	if (options.thin)
		FUNC2(&args, "--thin");
	if (options.verbosity >= 3)
		FUNC4(&args, "-v", "-v", NULL);
	if (options.check_self_contained_and_connected)
		FUNC2(&args, "--check-self-contained-and-connected");
	if (options.cloning)
		FUNC2(&args, "--cloning");
	if (options.update_shallow)
		FUNC2(&args, "--update-shallow");
	if (!options.progress)
		FUNC2(&args, "--no-progress");
	if (options.depth)
		FUNC3(&args, "--depth=%lu", options.depth);
	if (options.deepen_since)
		FUNC3(&args, "--shallow-since=%s", options.deepen_since);
	for (i = 0; i < options.deepen_not.nr; i++)
		FUNC3(&args, "--shallow-exclude=%s",
				 options.deepen_not.items[i].string);
	if (options.deepen_relative && options.depth)
		FUNC2(&args, "--deepen-relative");
	if (options.from_promisor)
		FUNC2(&args, "--from-promisor");
	if (options.no_dependents)
		FUNC2(&args, "--no-dependents");
	if (options.filter)
		FUNC3(&args, "--filter=%s", options.filter);
	FUNC2(&args, url.buf);

	for (i = 0; i < nr_heads; i++) {
		struct ref *ref = to_fetch[i];
		if (!*ref->name)
			FUNC5(FUNC0("cannot fetch by sha1 over smart http"));
		FUNC9(&preamble, "%s %s\n",
				 FUNC7(&ref->old_oid), ref->name);
	}
	FUNC8(&preamble);

	FUNC6(&rpc, 0, sizeof(rpc));
	rpc.service_name = "git-upload-pack",
	rpc.gzip_request = 1;

	err = FUNC10(&rpc, heads, args.argv, &preamble, &rpc_result);
	if (rpc_result.len)
		FUNC12(1, rpc_result.buf, rpc_result.len);
	FUNC11(&rpc_result);
	FUNC11(&preamble);
	FUNC1(&args);
	return err;
}