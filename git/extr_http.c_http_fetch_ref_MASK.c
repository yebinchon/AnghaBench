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
struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct ref {int /*<<< orphan*/  symref; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; } ;
struct http_get_options {int no_cache; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;

/* Variables and functions */
 scalar_t__ HTTP_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,struct strbuf*,struct http_get_options*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int FUNC8(const char *base, struct ref *ref)
{
	struct http_get_options options = {0};
	char *url;
	struct strbuf buffer = STRBUF_INIT;
	int ret = -1;

	options.no_cache = 1;

	url = FUNC3(base, ref->name);
	if (FUNC2(url, &buffer, &options) == HTTP_OK) {
		FUNC6(&buffer);
		if (buffer.len == the_hash_algo->hexsz)
			ret = FUNC1(buffer.buf, &ref->old_oid);
		else if (FUNC4(buffer.buf, "ref: ")) {
			ref->symref = FUNC7(buffer.buf + 5);
			ret = 0;
		}
	}

	FUNC5(&buffer);
	FUNC0(url);
	return ret;
}