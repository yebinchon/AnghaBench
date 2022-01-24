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
struct xml_ctx {char* name; int* userData; int /*<<< orphan*/  userFunc; int /*<<< orphan*/ * cdata; scalar_t__ len; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct slot_results {scalar_t__ curl_result; } ;
struct curl_slist {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct buffer {struct strbuf buf; int /*<<< orphan*/  member_1; struct strbuf member_0; } ;
struct active_request_slot {int /*<<< orphan*/  curl; struct slot_results* results; } ;
typedef  enum XML_Status { ____Placeholder_XML_Status } XML_Status ;
typedef  int /*<<< orphan*/  XML_Parser ;
struct TYPE_2__ {int /*<<< orphan*/  url; } ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURLOPT_FILE ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  DAV_PROPFIND ; 
 int /*<<< orphan*/  PROPFIND_SUPPORTEDLOCK_REQUEST ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int XML_STATUS_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xml_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer*,int /*<<< orphan*/ ) ; 
 struct strbuf* FUNC9 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  fwrite_buffer ; 
 struct active_request_slot* FUNC14 () ; 
 int /*<<< orphan*/  handle_lockprop_ctx ; 
 struct strbuf* FUNC15 () ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  FUNC16 (struct active_request_slot*) ; 
 scalar_t__ FUNC17 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 char* FUNC20 (int,int) ; 
 int /*<<< orphan*/  xml_end_tag ; 
 char* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xml_start_tag ; 

__attribute__((used)) static int FUNC22(void)
{
	struct active_request_slot *slot;
	struct slot_results results;
	struct strbuf in_buffer = STRBUF_INIT;
	struct buffer out_buffer = { STRBUF_INIT, 0 };
	struct curl_slist *dav_headers = FUNC15();
	struct xml_ctx ctx;
	int lock_flags = 0;
	char *escaped;

	escaped = FUNC21(repo->url);
	FUNC18(&out_buffer.buf, PROPFIND_SUPPORTEDLOCK_REQUEST, escaped);
	FUNC13(escaped);

	dav_headers = FUNC9(dav_headers, "Depth: 0");
	dav_headers = FUNC9(dav_headers, "Content-Type: text/xml");

	slot = FUNC14();
	slot->results = &results;
	FUNC8(slot->curl, repo->url, DAV_PROPFIND,
			&out_buffer, fwrite_buffer);
	FUNC7(slot->curl, CURLOPT_HTTPHEADER, dav_headers);
	FUNC7(slot->curl, CURLOPT_FILE, &in_buffer);

	if (FUNC17(slot)) {
		FUNC16(slot);
		if (results.curl_result == CURLE_OK) {
			XML_Parser parser = FUNC3(NULL);
			enum XML_Status result;
			ctx.name = FUNC20(10, 1);
			ctx.len = 0;
			ctx.cdata = NULL;
			ctx.userFunc = handle_lockprop_ctx;
			ctx.userData = &lock_flags;
			FUNC6(parser, &ctx);
			FUNC5(parser, xml_start_tag,
					      xml_end_tag);
			result = FUNC2(parser, in_buffer.buf,
					   in_buffer.len, 1);
			FUNC13(ctx.name);

			if (result != XML_STATUS_OK) {
				FUNC12(stderr, "XML error: %s\n",
					FUNC0(
						FUNC1(parser)));
				lock_flags = 0;
			}
			FUNC4(parser);
			if (!lock_flags)
				FUNC11("no DAV locking support on %s",
				      repo->url);

		} else {
			FUNC11("Cannot access URL %s, return code %d",
			      repo->url, results.curl_result);
			lock_flags = 0;
		}
	} else {
		FUNC11("Unable to start PROPFIND request on %s", repo->url);
	}

	FUNC19(&out_buffer.buf);
	FUNC19(&in_buffer);
	FUNC10(dav_headers);

	return lock_flags;
}