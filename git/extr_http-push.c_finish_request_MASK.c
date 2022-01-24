#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct transfer_request {scalar_t__ curl_result; int http_code; scalar_t__ state; char* url; scalar_t__ userData; TYPE_2__* obj; int /*<<< orphan*/ * headers; TYPE_1__* slot; } ;
struct http_pack_request {int dummy; } ;
struct http_object_request {scalar_t__ rename; } ;
struct TYPE_8__ {size_t* hash; } ;
struct TYPE_7__ {scalar_t__ can_update_info_refs; } ;
struct TYPE_6__ {int flags; TYPE_4__ oid; } ;
struct TYPE_5__ {scalar_t__ curl_result; int http_code; } ;

/* Variables and functions */
 void* ABORTED ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LOCAL ; 
 int REMOTE ; 
 scalar_t__ RUN_FETCH_LOOSE ; 
 scalar_t__ RUN_FETCH_PACKED ; 
 scalar_t__ RUN_MKCOL ; 
 scalar_t__ RUN_MOVE ; 
 scalar_t__ RUN_PUT ; 
 int aborted ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* curl_errorstr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct http_object_request*) ; 
 scalar_t__ FUNC4 (struct http_pack_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC6 (TYPE_4__*) ; 
 scalar_t__ push_verbosely ; 
 int /*<<< orphan*/  FUNC7 (struct http_object_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct http_pack_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct transfer_request*) ; 
 int* remote_dir_exists ; 
 TYPE_3__* repo ; 
 int /*<<< orphan*/  FUNC10 (struct transfer_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct transfer_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct transfer_request*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC13(struct transfer_request *request)
{
	struct http_pack_request *preq;
	struct http_object_request *obj_req;

	request->curl_result = request->slot->curl_result;
	request->http_code = request->slot->http_code;
	request->slot = NULL;

	/* Keep locks active */
	FUNC1();

	if (request->headers != NULL)
		FUNC2(request->headers);

	/* URL is reused for MOVE after PUT and used during FETCH */
	if (request->state != RUN_PUT && request->state != RUN_FETCH_PACKED) {
		FUNC0(request->url);
	}

	if (request->state == RUN_MKCOL) {
		if (request->curl_result == CURLE_OK ||
		    request->http_code == 405) {
			remote_dir_exists[request->obj->oid.hash[0]] = 1;
			FUNC12(request);
		} else {
			FUNC5(stderr, "MKCOL %s failed, aborting (%ld/%d)\n",
				FUNC6(&request->obj->oid),
				request->curl_result, request->http_code);
			request->state = ABORTED;
			aborted = 1;
		}
	} else if (request->state == RUN_PUT) {
		if (request->curl_result == CURLE_OK) {
			FUNC11(request);
		} else {
			FUNC5(stderr,	"PUT %s failed, aborting (%ld/%d)\n",
				FUNC6(&request->obj->oid),
				request->curl_result, request->http_code);
			request->state = ABORTED;
			aborted = 1;
		}
	} else if (request->state == RUN_MOVE) {
		if (request->curl_result == CURLE_OK) {
			if (push_verbosely)
				FUNC5(stderr, "    sent %s\n",
					FUNC6(&request->obj->oid));
			request->obj->flags |= REMOTE;
			FUNC9(request);
		} else {
			FUNC5(stderr, "MOVE %s failed, aborting (%ld/%d)\n",
				FUNC6(&request->obj->oid),
				request->curl_result, request->http_code);
			request->state = ABORTED;
			aborted = 1;
		}
	} else if (request->state == RUN_FETCH_LOOSE) {
		obj_req = (struct http_object_request *)request->userData;

		if (FUNC3(obj_req) == 0)
			if (obj_req->rename == 0)
				request->obj->flags |= (LOCAL | REMOTE);

		/* Try fetching packed if necessary */
		if (request->obj->flags & LOCAL) {
			FUNC7(obj_req);
			FUNC9(request);
		} else
			FUNC10(request);

	} else if (request->state == RUN_FETCH_PACKED) {
		int fail = 1;
		if (request->curl_result != CURLE_OK) {
			FUNC5(stderr, "Unable to get pack file %s\n%s",
				request->url, curl_errorstr);
		} else {
			preq = (struct http_pack_request *)request->userData;

			if (preq) {
				if (FUNC4(preq) == 0)
					fail = 0;
				FUNC8(preq);
			}
		}
		if (fail)
			repo->can_update_info_refs = 0;
		FUNC9(request);
	}
}