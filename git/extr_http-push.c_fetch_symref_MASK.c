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
struct strbuf {scalar_t__ len; char const* buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  url; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ HTTP_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  curl_errorstr ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct object_id*) ; 
 scalar_t__ FUNC4 (char*,struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*) ; 
 TYPE_1__* repo ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 char* FUNC9 (char const*,int) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC11(const char *path, char **symref, struct object_id *oid)
{
	char *url = FUNC10("%s%s", repo->url, path);
	struct strbuf buffer = STRBUF_INIT;
	const char *name;

	if (FUNC4(url, &buffer, NULL) != HTTP_OK)
		FUNC1("Couldn't get %s for remote symref\n%s", url,
		    curl_errorstr);
	FUNC2(url);

	FUNC0(*symref);
	FUNC5(oid);

	if (buffer.len == 0)
		return;

	/* Cut off trailing newline. */
	FUNC8(&buffer);

	/* If it's a symref, set the refname; otherwise try for a sha1 */
	if (FUNC6(buffer.buf, "ref: ", &name)) {
		*symref = FUNC9(name, buffer.len - (name - buffer.buf));
	} else {
		FUNC3(buffer.buf, oid);
	}

	FUNC7(&buffer);
}