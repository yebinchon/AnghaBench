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
 int /*<<< orphan*/  FUNC0 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,char const*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int,char*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static void FUNC7(struct strbuf *hdr, const char *accepted_type)
{
	const char *actual_type = FUNC3("CONTENT_TYPE");

	if (!actual_type)
		actual_type = "";

	if (FUNC6(actual_type, accepted_type)) {
		FUNC5(hdr, 415, "Unsupported Media Type");
		FUNC4(hdr);
		FUNC0(hdr);
		FUNC2(1,
			"Expected POST with Content-Type '%s',"
			" but received '%s' instead.\n",
			accepted_type, actual_type);
		FUNC1(0);
	}
}