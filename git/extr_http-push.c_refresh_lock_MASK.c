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
struct remote_lock {int refreshing; int /*<<< orphan*/  start_time; int /*<<< orphan*/  url; } ;
struct curl_slist {int dummy; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int DAV_HEADER_IF ; 
 int DAV_HEADER_TIMEOUT ; 
 int /*<<< orphan*/  DAV_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct active_request_slot* FUNC4 () ; 
 struct curl_slist* FUNC5 (struct remote_lock*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct active_request_slot*) ; 
 scalar_t__ FUNC7 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct remote_lock *lock)
{
	struct active_request_slot *slot;
	struct slot_results results;
	struct curl_slist *dav_headers;
	int rc = 0;

	lock->refreshing = 1;

	dav_headers = FUNC5(lock, DAV_HEADER_IF | DAV_HEADER_TIMEOUT);

	slot = FUNC4();
	slot->results = &results;
	FUNC1(slot->curl, lock->url, DAV_LOCK);
	FUNC0(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

	if (FUNC7(slot)) {
		FUNC6(slot);
		if (results.curl_result != CURLE_OK) {
			FUNC3(stderr, "LOCK HTTP error %d\n",
				results.http_code);
		} else {
			lock->start_time = FUNC8(NULL);
			rc = 1;
		}
	}

	lock->refreshing = 0;
	FUNC2(dav_headers);

	return rc;
}