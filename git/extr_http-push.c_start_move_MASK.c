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
struct transfer_request {char* dest; int /*<<< orphan*/  url; int /*<<< orphan*/  state; struct active_request_slot* slot; } ;
struct curl_slist {int dummy; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct transfer_request* callback_data; int /*<<< orphan*/  callback_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORTED ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  DAV_MOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RUN_MOVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct curl_slist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct curl_slist* FUNC3 (struct curl_slist*,char*) ; 
 struct active_request_slot* FUNC4 () ; 
 struct curl_slist* FUNC5 () ; 
 int /*<<< orphan*/  process_response ; 
 scalar_t__ FUNC6 (struct active_request_slot*) ; 

__attribute__((used)) static void FUNC7(struct transfer_request *request)
{
	struct active_request_slot *slot;
	struct curl_slist *dav_headers = FUNC5();

	slot = FUNC4();
	slot->callback_func = process_response;
	slot->callback_data = request;
	FUNC2(slot->curl, request->url, DAV_MOVE);
	dav_headers = FUNC3(dav_headers, request->dest);
	dav_headers = FUNC3(dav_headers, "Overwrite: T");
	FUNC1(slot->curl, CURLOPT_HTTPHEADER, dav_headers);

	if (FUNC6(slot)) {
		request->slot = slot;
		request->state = RUN_MOVE;
	} else {
		request->state = ABORTED;
		FUNC0(request->url);
	}
}