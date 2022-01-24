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
typedef  scalar_t__ uint32_t ;
struct strbuf {char* buf; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct multi_pack_index {scalar_t__ num_objects; int /*<<< orphan*/  num_packs; } ;
struct child_process {int git_cmd; int in; int out; int /*<<< orphan*/  args; } ;
struct TYPE_2__ {int hexsz; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 unsigned int MIDX_PROGRESS ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct multi_pack_index*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct multi_pack_index*,unsigned char*) ; 
 scalar_t__ FUNC6 (struct repository*,struct multi_pack_index*,unsigned char*,size_t) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 struct multi_pack_index* FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct object_id*,struct multi_pack_index*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct multi_pack_index*,scalar_t__) ; 
 char* FUNC12 (struct object_id*) ; 
 scalar_t__ FUNC13 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 TYPE_1__* the_hash_algo ; 
 int FUNC16 (char const*,struct multi_pack_index*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned char* FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int) ; 

int FUNC19(struct repository *r, const char *object_dir, size_t batch_size, unsigned flags)
{
	int result = 0;
	uint32_t i;
	unsigned char *include_pack;
	struct child_process cmd = CHILD_PROCESS_INIT;
	struct strbuf base_name = STRBUF_INIT;
	struct multi_pack_index *m = FUNC9(object_dir, 1);

	if (!m)
		return 0;

	include_pack = FUNC17(m->num_packs, sizeof(unsigned char));

	if (batch_size) {
		if (FUNC6(r, m, include_pack, batch_size))
			goto cleanup;
	} else if (FUNC5(m, include_pack))
		goto cleanup;

	FUNC1(&cmd.args, "pack-objects");

	FUNC14(&base_name, object_dir);
	FUNC14(&base_name, "/pack/pack");
	FUNC1(&cmd.args, base_name.buf);

	if (flags & MIDX_PROGRESS)
		FUNC1(&cmd.args, "--progress");
	else
		FUNC1(&cmd.args, "-q");

	FUNC15(&base_name);

	cmd.git_cmd = 1;
	cmd.in = cmd.out = -1;

	if (FUNC13(&cmd)) {
		FUNC4(FUNC0("could not start pack-objects"));
		result = 1;
		goto cleanup;
	}

	for (i = 0; i < m->num_objects; i++) {
		struct object_id oid;
		uint32_t pack_int_id = FUNC11(m, i);

		if (!include_pack[pack_int_id])
			continue;

		FUNC10(&oid, m, i);
		FUNC18(cmd.in, FUNC12(&oid), the_hash_algo->hexsz);
		FUNC18(cmd.in, "\n", 1);
	}
	FUNC2(cmd.in);

	if (FUNC7(&cmd)) {
		FUNC4(FUNC0("could not finish pack-objects"));
		result = 1;
		goto cleanup;
	}

	result = FUNC16(object_dir, m, NULL, flags);
	m = NULL;

cleanup:
	if (m)
		FUNC3(m);
	FUNC8(include_pack);
	return result;
}