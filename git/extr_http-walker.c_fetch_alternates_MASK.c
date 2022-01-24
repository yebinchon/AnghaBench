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
struct walker_data {int got_alternates; } ;
struct walker {scalar_t__ get_verbosely; struct walker_data* data; } ;
struct strbuf {struct strbuf* buf; } ;
struct alternates_request {char const* base; int http_specific; struct active_request_slot* slot; struct strbuf* buffer; struct strbuf* url; struct walker* walker; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct alternates_request* callback_data; int /*<<< orphan*/  callback_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_FILE ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct strbuf* fwrite_buffer ; 
 struct active_request_slot* FUNC2 () ; 
 int /*<<< orphan*/  process_alternates_response ; 
 int /*<<< orphan*/  FUNC3 (struct active_request_slot*) ; 
 scalar_t__ FUNC4 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(struct walker *walker, const char *base)
{
	struct strbuf buffer = STRBUF_INIT;
	struct strbuf url = STRBUF_INIT;
	struct active_request_slot *slot;
	struct alternates_request alt_req;
	struct walker_data *cdata = walker->data;

	/*
	 * If another request has already started fetching alternates,
	 * wait for them to arrive and return to processing this request's
	 * curl message
	 */
#ifdef USE_CURL_MULTI
	while (cdata->got_alternates == 0) {
		step_active_slots();
	}
#endif

	/* Nothing to do if they've already been fetched */
	if (cdata->got_alternates == 1)
		return;

	/* Start the fetch */
	cdata->got_alternates = 0;

	if (walker->get_verbosely)
		FUNC1(stderr, "Getting alternates list for %s\n", base);

	FUNC6(&url, "%s/objects/info/http-alternates", base);

	/*
	 * Use a callback to process the result, since another request
	 * may fail and need to have alternates loaded before continuing
	 */
	slot = FUNC2();
	slot->callback_func = process_alternates_response;
	alt_req.walker = walker;
	slot->callback_data = &alt_req;

	FUNC0(slot->curl, CURLOPT_FILE, &buffer);
	FUNC0(slot->curl, CURLOPT_WRITEFUNCTION, fwrite_buffer);
	FUNC0(slot->curl, CURLOPT_URL, url.buf);

	alt_req.base = base;
	alt_req.url = &url;
	alt_req.buffer = &buffer;
	alt_req.http_specific = 1;
	alt_req.slot = slot;

	if (FUNC4(slot))
		FUNC3(slot);
	else
		cdata->got_alternates = -1;

	FUNC7(&buffer);
	FUNC7(&url);
}