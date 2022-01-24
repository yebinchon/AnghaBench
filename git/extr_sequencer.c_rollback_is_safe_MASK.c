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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (char*,struct object_id*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct object_id*) ; 
 int FUNC7 (struct object_id*,struct object_id*) ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct strbuf sb = STRBUF_INIT;
	struct object_id expected_head, actual_head;

	if (FUNC8(&sb, FUNC5(), 0) >= 0) {
		FUNC10(&sb);
		if (FUNC4(sb.buf, &expected_head)) {
			FUNC9(&sb);
			FUNC1(FUNC0("could not parse %s"), FUNC5());
		}
		FUNC9(&sb);
	}
	else if (errno == ENOENT)
		FUNC6(&expected_head);
	else
		FUNC2(FUNC0("could not read '%s'"), FUNC5());

	if (FUNC3("HEAD", &actual_head))
		FUNC6(&actual_head);

	return FUNC7(&actual_head, &expected_head);
}