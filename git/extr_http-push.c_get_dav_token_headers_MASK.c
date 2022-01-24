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
struct remote_lock {int /*<<< orphan*/  timeout; int /*<<< orphan*/  token; } ;
struct curl_slist {int dummy; } ;
typedef  enum dav_header_flag { ____Placeholder_dav_header_flag } dav_header_flag ;

/* Variables and functions */
 int DAV_HEADER_IF ; 
 int DAV_HEADER_LOCK ; 
 int DAV_HEADER_TIMEOUT ; 
 struct strbuf STRBUF_INIT ; 
 struct curl_slist* FUNC0 (struct curl_slist*,int /*<<< orphan*/ ) ; 
 struct curl_slist* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static struct curl_slist *FUNC5(struct remote_lock *lock, enum dav_header_flag options)
{
	struct strbuf buf = STRBUF_INIT;
	struct curl_slist *dav_headers = FUNC1();

	if (options & DAV_HEADER_IF) {
		FUNC2(&buf, "If: (<%s>)", lock->token);
		dav_headers = FUNC0(dav_headers, buf.buf);
		FUNC4(&buf);
	}
	if (options & DAV_HEADER_LOCK) {
		FUNC2(&buf, "Lock-Token: <%s>", lock->token);
		dav_headers = FUNC0(dav_headers, buf.buf);
		FUNC4(&buf);
	}
	if (options & DAV_HEADER_TIMEOUT) {
		FUNC2(&buf, "Timeout: Second-%ld", lock->timeout);
		dav_headers = FUNC0(dav_headers, buf.buf);
		FUNC4(&buf);
	}
	FUNC3(&buf);

	return dav_headers;
}