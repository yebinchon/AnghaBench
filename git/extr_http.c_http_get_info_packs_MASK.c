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
struct strbuf {char* buf; } ;
struct packed_git {int dummy; } ;
struct object_id {int /*<<< orphan*/  hash; } ;
struct http_get_options {int no_cache; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int HTTP_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_git**,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,struct strbuf*,struct http_get_options*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct object_id*,char const**) ; 
 scalar_t__ FUNC5 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*) ; 
 char* FUNC7 (struct strbuf*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char) ; 

int FUNC9(const char *base_url, struct packed_git **packs_head)
{
	struct http_get_options options = {0};
	int ret = 0;
	char *url;
	const char *data;
	struct strbuf buf = STRBUF_INIT;
	struct object_id oid;

	FUNC0(&buf, base_url);
	FUNC6(&buf, "objects/info/packs");
	url = FUNC7(&buf, NULL);

	options.no_cache = 1;
	ret = FUNC3(url, &buf, &options);
	if (ret != HTTP_OK)
		goto cleanup;

	data = buf.buf;
	while (*data) {
		if (FUNC5(data, "P pack-", &data) &&
		    !FUNC4(data, &oid, &data) &&
		    FUNC5(data, ".pack", &data) &&
		    (*data == '\n' || *data == '\0')) {
			FUNC1(packs_head, oid.hash, base_url);
		} else {
			data = FUNC8(data, '\n');
		}
		if (*data)
			data++; /* skip past newline */
	}

cleanup:
	FUNC2(url);
	return ret;
}