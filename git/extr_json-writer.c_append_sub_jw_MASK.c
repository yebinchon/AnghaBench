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
struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct json_writer {struct strbuf json; scalar_t__ pretty; TYPE_1__ open_stack; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,struct json_writer const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct json_writer const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(struct json_writer *jw,
			  const struct json_writer *value)
{
	/*
	 * If both are pretty, increase the indentation of the sub_jw
	 * to better fit under the super.
	 *
	 * If the super is pretty, but the sub_jw is compact, leave the
	 * sub_jw compact.  (We don't want to parse and rebuild the sub_jw
	 * for this debug-ish feature.)
	 *
	 * If the super is compact, and the sub_jw is pretty, convert
	 * the sub_jw to compact.
	 *
	 * If both are compact, keep the sub_jw compact.
	 */
	if (jw->pretty && jw->open_stack.len && value->pretty) {
		struct strbuf sb = STRBUF_INIT;
		FUNC0(&sb, value, jw->open_stack.len * 2);
		FUNC2(&jw->json, &sb);
		FUNC3(&sb);
		return;
	}
	if (!jw->pretty && value->pretty) {
		struct strbuf sb = STRBUF_INIT;
		FUNC1(&sb, value);
		FUNC2(&jw->json, &sb);
		FUNC3(&sb);
		return;
	}

	FUNC2(&jw->json, &value->json);
}