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
struct slot_results {scalar_t__ curl_result; int /*<<< orphan*/  http_code; } ;
struct remote_lock {struct remote_lock* token; struct remote_lock* url; struct remote_lock* owner; struct remote_lock* next; } ;
struct curl_slist {int dummy; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;
struct TYPE_2__ {struct remote_lock* locks; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  DAV_HEADER_LOCK ; 
 int /*<<< orphan*/  DAV_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct remote_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct remote_lock*) ; 
 struct active_request_slot* FUNC5 () ; 
 struct curl_slist* FUNC6 (struct remote_lock*,int /*<<< orphan*/ ) ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  FUNC7 (struct active_request_slot*) ; 
 scalar_t__ FUNC8 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(struct remote_lock *lock)
{
	struct active_request_slot *slot;
	struct slot_results results;
	struct remote_lock *prev = repo->locks;
	struct curl_slist *dav_headers;
	int rc = 0;

	dav_headers = FUNC6(lock, DAV_HEADER_LOCK);

	slot = FUNC5();
	slot->results = &results;
	FUNC1(slot->curl, lock->url, DAV_UNLOCK);
	FUNC0(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

	if (FUNC8(slot)) {
		FUNC7(slot);
		if (results.curl_result == CURLE_OK)
			rc = 1;
		else
			FUNC3(stderr, "UNLOCK HTTP error %d\n",
				results.http_code);
	} else {
		FUNC3(stderr, "Unable to start UNLOCK request\n");
	}

	FUNC2(dav_headers);

	if (repo->locks == lock) {
		repo->locks = lock->next;
	} else {
		while (prev && prev->next != lock)
			prev = prev->next;
		if (prev)
			prev->next = lock->next;
	}

	FUNC4(lock->owner);
	FUNC4(lock->url);
	FUNC4(lock->token);
	FUNC4(lock);

	return rc;
}