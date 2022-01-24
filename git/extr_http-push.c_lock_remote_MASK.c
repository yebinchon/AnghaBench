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
typedef  int /*<<< orphan*/  timeout_header ;
struct xml_ctx {char* name; struct remote_lock* userData; int /*<<< orphan*/  userFunc; int /*<<< orphan*/ * cdata; scalar_t__ len; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct slot_results {scalar_t__ curl_result; int http_code; } ;
struct remote_lock {int timeout; char* token; char* owner; char* url; struct remote_lock* next; int /*<<< orphan*/  start_time; } ;
struct curl_slist {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct buffer {struct strbuf buf; int /*<<< orphan*/  member_1; struct strbuf member_0; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;
typedef  enum XML_Status { ____Placeholder_XML_Status } XML_Status ;
typedef  int /*<<< orphan*/  XML_Parser ;
struct TYPE_2__ {struct remote_lock* locks; int /*<<< orphan*/  url; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_FILE ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  DAV_LOCK ; 
 int /*<<< orphan*/  DAV_MKCOL ; 
 int /*<<< orphan*/  FUNC0 (struct remote_lock*) ; 
 int /*<<< orphan*/  LOCK_REQUEST ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int XML_STATUS_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct xml_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct strbuf* FUNC12 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  fwrite_buffer ; 
 struct active_request_slot* FUNC16 () ; 
 int /*<<< orphan*/  handle_new_lock_ctx ; 
 struct strbuf* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  FUNC19 (struct active_request_slot*) ; 
 scalar_t__ FUNC20 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*) ; 
 char* FUNC23 (char*,char) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 void* FUNC26 (int,int) ; 
 int /*<<< orphan*/  xml_cdata ; 
 int /*<<< orphan*/  xml_end_tag ; 
 char* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xml_start_tag ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,long) ; 
 char* FUNC29 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct remote_lock *FUNC30(const char *path, long timeout)
{
	struct active_request_slot *slot;
	struct slot_results results;
	struct buffer out_buffer = { STRBUF_INIT, 0 };
	struct strbuf in_buffer = STRBUF_INIT;
	char *url;
	char *ep;
	char timeout_header[25];
	struct remote_lock *lock = NULL;
	struct curl_slist *dav_headers = FUNC17();
	struct xml_ctx ctx;
	char *escaped;

	url = FUNC29("%s%s", repo->url, path);

	/* Make sure leading directories exist for the remote ref */
	ep = FUNC23(url + FUNC24(repo->url) + 1, '/');
	while (ep) {
		char saved_character = ep[1];
		ep[1] = '\0';
		slot = FUNC16();
		slot->results = &results;
		FUNC11(slot->curl, url, DAV_MKCOL);
		if (FUNC20(slot)) {
			FUNC19(slot);
			if (results.curl_result != CURLE_OK &&
			    results.http_code != 405) {
				FUNC14(stderr,
					"Unable to create branch path %s\n",
					url);
				FUNC15(url);
				return NULL;
			}
		} else {
			FUNC14(stderr, "Unable to start MKCOL request\n");
			FUNC15(url);
			return NULL;
		}
		ep[1] = saved_character;
		ep = FUNC23(ep + 1, '/');
	}

	escaped = FUNC27(FUNC18());
	FUNC21(&out_buffer.buf, LOCK_REQUEST, escaped);
	FUNC15(escaped);

	FUNC28(timeout_header, sizeof(timeout_header), "Timeout: Second-%ld", timeout);
	dav_headers = FUNC12(dav_headers, timeout_header);
	dav_headers = FUNC12(dav_headers, "Content-Type: text/xml");

	slot = FUNC16();
	slot->results = &results;
	FUNC10(slot->curl, url, DAV_LOCK, &out_buffer, fwrite_buffer);
	FUNC9(slot->curl, CURLOPT_HTTPHEADER, dav_headers);
	FUNC9(slot->curl, CURLOPT_FILE, &in_buffer);

	lock = FUNC26(1, sizeof(*lock));
	lock->timeout = -1;

	if (FUNC20(slot)) {
		FUNC19(slot);
		if (results.curl_result == CURLE_OK) {
			XML_Parser parser = FUNC4(NULL);
			enum XML_Status result;
			ctx.name = FUNC26(10, 1);
			ctx.len = 0;
			ctx.cdata = NULL;
			ctx.userFunc = handle_new_lock_ctx;
			ctx.userData = lock;
			FUNC8(parser, &ctx);
			FUNC7(parser, xml_start_tag,
					      xml_end_tag);
			FUNC6(parser, xml_cdata);
			result = FUNC3(parser, in_buffer.buf,
					   in_buffer.len, 1);
			FUNC15(ctx.name);
			if (result != XML_STATUS_OK) {
				FUNC14(stderr, "XML error: %s\n",
					FUNC1(
						FUNC2(parser)));
				lock->timeout = -1;
			}
			FUNC5(parser);
		} else {
			FUNC14(stderr,
				"error: curl result=%ld, HTTP code=%d\n",
				results.curl_result, results.http_code);
		}
	} else {
		FUNC14(stderr, "Unable to start LOCK request\n");
	}

	FUNC13(dav_headers);
	FUNC22(&out_buffer.buf);
	FUNC22(&in_buffer);

	if (lock->token == NULL || lock->timeout <= 0) {
		FUNC15(lock->token);
		FUNC15(lock->owner);
		FUNC15(url);
		FUNC0(lock);
	} else {
		lock->url = url;
		lock->start_time = FUNC25(NULL);
		lock->next = repo->locks;
		repo->locks = lock;
	}

	return lock;
}