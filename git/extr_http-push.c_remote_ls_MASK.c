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
struct xml_ctx {char* name; struct remote_ls_ctx* userData; int /*<<< orphan*/  userFunc; int /*<<< orphan*/ * cdata; scalar_t__ len; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct slot_results {scalar_t__ curl_result; } ;
struct remote_ls_ctx {int flags; char* path; void (* userFunc ) (struct remote_ls_ctx*) ;void* userData; scalar_t__ dentry_flags; int /*<<< orphan*/ * dentry_name; } ;
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
 int /*<<< orphan*/  PROPFIND_ALL_REQUEST ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int XML_STATUS_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct xml_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct buffer*,int /*<<< orphan*/ ) ; 
 struct strbuf* FUNC10 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  fwrite_buffer ; 
 struct active_request_slot* FUNC14 () ; 
 int /*<<< orphan*/  handle_remote_ls_ctx ; 
 struct strbuf* FUNC15 () ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  FUNC16 (struct active_request_slot*) ; 
 scalar_t__ FUNC17 (struct active_request_slot*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 char* FUNC20 (int,int) ; 
 int /*<<< orphan*/  xml_cdata ; 
 int /*<<< orphan*/  xml_end_tag ; 
 int /*<<< orphan*/  xml_start_tag ; 
 char* FUNC21 (char const*) ; 
 char* FUNC22 (char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC23(const char *path, int flags,
		      void (*userFunc)(struct remote_ls_ctx *ls),
		      void *userData)
{
	char *url = FUNC22("%s%s", repo->url, path);
	struct active_request_slot *slot;
	struct slot_results results;
	struct strbuf in_buffer = STRBUF_INIT;
	struct buffer out_buffer = { STRBUF_INIT, 0 };
	struct curl_slist *dav_headers = FUNC15();
	struct xml_ctx ctx;
	struct remote_ls_ctx ls;

	ls.flags = flags;
	ls.path = FUNC21(path);
	ls.dentry_name = NULL;
	ls.dentry_flags = 0;
	ls.userData = userData;
	ls.userFunc = userFunc;

	FUNC18(&out_buffer.buf, PROPFIND_ALL_REQUEST);

	dav_headers = FUNC10(dav_headers, "Depth: 1");
	dav_headers = FUNC10(dav_headers, "Content-Type: text/xml");

	slot = FUNC14();
	slot->results = &results;
	FUNC9(slot->curl, url, DAV_PROPFIND,
			&out_buffer, fwrite_buffer);
	FUNC8(slot->curl, CURLOPT_HTTPHEADER, dav_headers);
	FUNC8(slot->curl, CURLOPT_FILE, &in_buffer);

	if (FUNC17(slot)) {
		FUNC16(slot);
		if (results.curl_result == CURLE_OK) {
			XML_Parser parser = FUNC3(NULL);
			enum XML_Status result;
			ctx.name = FUNC20(10, 1);
			ctx.len = 0;
			ctx.cdata = NULL;
			ctx.userFunc = handle_remote_ls_ctx;
			ctx.userData = &ls;
			FUNC7(parser, &ctx);
			FUNC6(parser, xml_start_tag,
					      xml_end_tag);
			FUNC5(parser, xml_cdata);
			result = FUNC2(parser, in_buffer.buf,
					   in_buffer.len, 1);
			FUNC13(ctx.name);

			if (result != XML_STATUS_OK) {
				FUNC12(stderr, "XML error: %s\n",
					FUNC0(
						FUNC1(parser)));
			}
			FUNC4(parser);
		}
	} else {
		FUNC12(stderr, "Unable to start PROPFIND request\n");
	}

	FUNC13(ls.path);
	FUNC13(url);
	FUNC19(&out_buffer.buf);
	FUNC19(&in_buffer);
	FUNC11(dav_headers);
}