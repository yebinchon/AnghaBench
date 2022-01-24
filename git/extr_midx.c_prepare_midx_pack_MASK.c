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
typedef  size_t uint32_t ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct repository {TYPE_1__* objects; } ;
struct packed_git {int multi_pack_index; int /*<<< orphan*/  mru; } ;
struct multi_pack_index {size_t num_packs; struct packed_git** packs; int /*<<< orphan*/  local; int /*<<< orphan*/ * pack_names; int /*<<< orphan*/  object_dir; } ;
struct TYPE_2__ {int /*<<< orphan*/  packed_git_mru; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct packed_git* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,struct packed_git*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

int FUNC7(struct repository *r, struct multi_pack_index *m, uint32_t pack_int_id)
{
	struct strbuf pack_name = STRBUF_INIT;
	struct packed_git *p;

	if (pack_int_id >= m->num_packs)
		FUNC2(FUNC0("bad pack-int-id: %u (%u total packs)"),
		    pack_int_id, m->num_packs);

	if (m->packs[pack_int_id])
		return 0;

	FUNC5(&pack_name, "%s/pack/%s", m->object_dir,
		    m->pack_names[pack_int_id]);

	p = FUNC1(pack_name.buf, pack_name.len, m->local);
	FUNC6(&pack_name);

	if (!p)
		return 1;

	p->multi_pack_index = 1;
	m->packs[pack_int_id] = p;
	FUNC3(r, p);
	FUNC4(&p->mru, &r->objects->packed_git_mru);

	return 0;
}