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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct line_buffer {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct line_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct line_buffer*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct line_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(const char *command, const char *arg, struct line_buffer *buf)
{
	if (FUNC5(command, "binary ")) {
		struct strbuf sb = STRBUF_INIT;
		FUNC6(&sb, '>');
		FUNC1(buf, &sb, FUNC8(arg));
		FUNC4(sb.buf, 1, sb.len, stdout);
		FUNC7(&sb);
	} else if (FUNC5(command, "copy ")) {
		FUNC0(buf, FUNC8(arg));
	} else if (FUNC5(command, "skip ")) {
		FUNC2(buf, FUNC8(arg));
	} else {
		FUNC3("unrecognized command: %s", command);
	}
}