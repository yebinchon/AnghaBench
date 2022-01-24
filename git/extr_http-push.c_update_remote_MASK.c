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
struct slot_results {scalar_t__ curl_result; int /*<<< orphan*/  http_code; } ;
struct remote_lock {int /*<<< orphan*/  url; } ;
struct object_id {int dummy; } ;
struct curl_slist {int dummy; } ;
struct buffer {int /*<<< orphan*/  buf; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  DAV_HEADER_IF ; 
 int /*<<< orphan*/  DAV_PUT ; 
 int /*<<< orphan*/  STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fwrite_null ; 
 struct active_request_slot* FUNC3 () ; 
 struct curl_slist* FUNC4 (struct remote_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC6 (struct active_request_slot*) ; 
 scalar_t__ FUNC7 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(const struct object_id *oid, struct remote_lock *lock)
{
	struct active_request_slot *slot;
	struct slot_results results;
	struct buffer out_buffer = { STRBUF_INIT, 0 };
	struct curl_slist *dav_headers;

	dav_headers = FUNC4(lock, DAV_HEADER_IF);

	FUNC8(&out_buffer.buf, "%s\n", FUNC5(oid));

	slot = FUNC3();
	slot->results = &results;
	FUNC1(slot->curl, lock->url, DAV_PUT,
			&out_buffer, fwrite_null);
	FUNC0(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

	if (FUNC7(slot)) {
		FUNC6(slot);
		FUNC9(&out_buffer.buf);
		if (results.curl_result != CURLE_OK) {
			FUNC2(stderr,
				"PUT error: curl result=%ld, HTTP code=%d\n",
				results.curl_result, results.http_code);
			/* We should attempt recovery? */
			return 0;
		}
	} else {
		FUNC9(&out_buffer.buf);
		FUNC2(stderr, "Unable to start PUT request\n");
		return 0;
	}

	return 1;
}