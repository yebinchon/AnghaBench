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
struct tempfile {int /*<<< orphan*/  fd; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct oid_array {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char const* FUNC2 (struct tempfile*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct strbuf*,int /*<<< orphan*/ ,struct oid_array const*) ; 
 struct tempfile* FUNC7 (int /*<<< orphan*/ ) ; 

const char *FUNC8(const struct oid_array *extra)
{
	struct tempfile *temp;
	struct strbuf sb = STRBUF_INIT;

	if (FUNC6(&sb, 0, extra)) {
		temp = FUNC7(FUNC3("shallow_XXXXXX"));

		if (FUNC5(temp->fd, sb.buf, sb.len) < 0 ||
		    FUNC0(temp) < 0)
			FUNC1("failed to write to %s",
				  FUNC2(temp));
		FUNC4(&sb);
		return FUNC2(temp);
	}
	/*
	 * is_repository_shallow() sees empty string as "no shallow
	 * file".
	 */
	return "";
}