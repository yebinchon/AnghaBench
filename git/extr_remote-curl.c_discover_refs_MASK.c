#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
struct strbuf {char const* buf; } ;
struct http_get_options {int initial_request; int no_cache; struct string_list* extra_headers; TYPE_1__* base_url; struct strbuf* effective_url; struct strbuf* charset; struct strbuf* content_type; } ;
struct discovery {char const* service; int /*<<< orphan*/  refs; scalar_t__ proto_git; int /*<<< orphan*/  buf_alloc; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  http_options ;
typedef  enum protocol_version { ____Placeholder_protocol_version } protocol_version ;
struct TYPE_4__ {scalar_t__ verbosity; } ;
struct TYPE_3__ {char const* buf; } ;

/* Variables and functions */
#define  HTTP_MISSING_TARGET 130 
#define  HTTP_NOAUTH 129 
#define  HTTP_OK 128 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct discovery*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  curl_errorstr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct discovery*) ; 
 scalar_t__ FUNC5 (int,struct strbuf*) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (char*,int) ; 
 int FUNC8 (char const*,struct strbuf*,struct http_get_options*) ; 
 struct discovery* last_discovery ; 
 int /*<<< orphan*/  FUNC9 (struct http_get_options*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ options ; 
 int /*<<< orphan*/  FUNC10 (struct discovery*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct discovery*) ; 
 int protocol_v0 ; 
 int protocol_v2 ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,struct strbuf*,struct strbuf*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC21 (struct string_list*,int /*<<< orphan*/ ) ; 
 char* FUNC22 (char const*) ; 
 TYPE_1__ url ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 struct discovery* FUNC24 (int,int) ; 
 char const* FUNC25 (char const*) ; 

__attribute__((used)) static struct discovery *FUNC26(const char *service, int for_push)
{
	struct strbuf type = STRBUF_INIT;
	struct strbuf charset = STRBUF_INIT;
	struct strbuf buffer = STRBUF_INIT;
	struct strbuf refs_url = STRBUF_INIT;
	struct strbuf effective_url = STRBUF_INIT;
	struct strbuf protocol_header = STRBUF_INIT;
	struct string_list extra_headers = STRING_LIST_INIT_DUP;
	struct discovery *last = last_discovery;
	int http_ret, maybe_smart = 0;
	struct http_get_options http_options;
	enum protocol_version version = FUNC6();

	if (last && !FUNC19(service, last->service))
		return last;
	FUNC4(last);

	FUNC15(&refs_url, "%sinfo/refs", url.buf);
	if ((FUNC13(url.buf, "http://") || FUNC13(url.buf, "https://")) &&
	     FUNC7("GIT_SMART_HTTP", 1)) {
		maybe_smart = 1;
		if (!FUNC18(url.buf, '?'))
			FUNC14(&refs_url, '?');
		else
			FUNC14(&refs_url, '&');
		FUNC15(&refs_url, "service=%s", service);
	}

	/*
	 * NEEDSWORK: If we are trying to use protocol v2 and we are planning
	 * to perform a push, then fallback to v0 since the client doesn't know
	 * how to push yet using v2.
	 */
	if (version == protocol_v2 && !FUNC19("git-receive-pack", service))
		version = protocol_v0;

	/* Add the extra Git-Protocol header */
	if (FUNC5(version, &protocol_header))
		FUNC20(&extra_headers, protocol_header.buf);

	FUNC9(&http_options, 0, sizeof(http_options));
	http_options.content_type = &type;
	http_options.charset = &charset;
	http_options.effective_url = &effective_url;
	http_options.base_url = &url;
	http_options.extra_headers = &extra_headers;
	http_options.initial_request = 1;
	http_options.no_cache = 1;

	http_ret = FUNC8(refs_url.buf, &buffer, &http_options);
	switch (http_ret) {
	case HTTP_OK:
		break;
	case HTTP_MISSING_TARGET:
		FUNC12(&type, &charset, &buffer);
		FUNC2(FUNC0("repository '%s' not found"),
		    FUNC22(url.buf));
	case HTTP_NOAUTH:
		FUNC12(&type, &charset, &buffer);
		FUNC2(FUNC0("Authentication failed for '%s'"),
		    FUNC22(url.buf));
	default:
		FUNC12(&type, &charset, &buffer);
		FUNC2(FUNC0("unable to access '%s': %s"),
		    FUNC22(url.buf), curl_errorstr);
	}

	if (options.verbosity && !FUNC13(refs_url.buf, url.buf)) {
		char *u = FUNC22(url.buf);
		FUNC23(FUNC0("redirecting to %s"), u);
		FUNC3(u);
	}

	last= FUNC24(1, sizeof(*last_discovery));
	last->service = FUNC25(service);
	last->buf_alloc = FUNC16(&buffer, &last->len);
	last->buf = last->buf_alloc;

	if (maybe_smart)
		FUNC1(last, service, &type);

	if (last->proto_git)
		last->refs = FUNC10(last, for_push);
	else
		last->refs = FUNC11(last);

	FUNC17(&refs_url);
	FUNC17(&type);
	FUNC17(&charset);
	FUNC17(&effective_url);
	FUNC17(&buffer);
	FUNC17(&protocol_header);
	FUNC21(&extra_headers, 0);
	last_discovery = last;
	return last;
}