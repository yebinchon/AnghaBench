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
struct curl_slist {int dummy; } ;
struct buffer {int /*<<< orphan*/  buf; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  DAV_HEADER_IF ; 
 int /*<<< orphan*/  DAV_PUT ; 
 int PROCESS_FILES ; 
 int RECURSIVE ; 
 int /*<<< orphan*/  STRBUF_INIT ; 
 int /*<<< orphan*/  aborted ; 
 int /*<<< orphan*/  add_remote_info_ref ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwrite_null ; 
 struct active_request_slot* FUNC3 () ; 
 struct curl_slist* FUNC4 (struct remote_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct active_request_slot*) ; 
 scalar_t__ FUNC7 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct remote_lock *lock)
{
	struct buffer buffer = { STRBUF_INIT, 0 };
	struct active_request_slot *slot;
	struct slot_results results;
	struct curl_slist *dav_headers;

	FUNC5("refs/", (PROCESS_FILES | RECURSIVE),
		  add_remote_info_ref, &buffer.buf);
	if (!aborted) {
		dav_headers = FUNC4(lock, DAV_HEADER_IF);

		slot = FUNC3();
		slot->results = &results;
		FUNC1(slot->curl, lock->url, DAV_PUT,
				&buffer, fwrite_null);
		FUNC0(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

		if (FUNC7(slot)) {
			FUNC6(slot);
			if (results.curl_result != CURLE_OK) {
				FUNC2(stderr,
					"PUT error: curl result=%ld, HTTP code=%d\n",
					results.curl_result, results.http_code);
			}
		}
	}
	FUNC8(&buffer.buf);
}