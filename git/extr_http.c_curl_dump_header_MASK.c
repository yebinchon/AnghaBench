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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,char const*,long,long) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 struct strbuf** FUNC9 (struct strbuf*,char,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  trace_curl ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct strbuf*) ; 

__attribute__((used)) static void FUNC12(const char *text, unsigned char *ptr, size_t size, int hide_sensitive_header)
{
	struct strbuf out = STRBUF_INIT;
	struct strbuf **headers, **header;

	FUNC3(&out, "%s, %10.10ld bytes (0x%8.8lx)\n",
		text, (long)size, (long)size);
	FUNC11(&trace_curl, &out);
	FUNC7(&out);
	FUNC1(&out, ptr, size);
	headers = FUNC9(&out, '\n', 0);

	for (header = headers; *header; header++) {
		if (hide_sensitive_header)
			FUNC0(*header);
		FUNC4((*header), 0, text, FUNC10(text));
		FUNC4((*header), FUNC10(text), ": ", 2);
		FUNC8((*header));
		FUNC2((*header), '\n');
		FUNC11(&trace_curl, (*header));
	}
	FUNC5(headers);
	FUNC6(&out);
}