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
struct transport {char const* url; TYPE_1__* smart_options; int /*<<< orphan*/ * vtable; struct git_transport_data* data; struct remote* remote; scalar_t__ got_remote_refs; int /*<<< orphan*/  progress; } ;
struct remote {char* foreign_vcs; char** url; char* uploadpack; char* receivepack; } ;
struct TYPE_2__ {int thin; char* uploadpack; char* receivepack; } ;
struct git_transport_data {scalar_t__ got_remote_heads; int /*<<< orphan*/ * conn; TYPE_1__ options; } ;
struct bundle_transport_data {scalar_t__ got_remote_heads; int /*<<< orphan*/ * conn; TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  builtin_smart_vtable ; 
 int /*<<< orphan*/  bundle_vtable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (int,char const) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct transport*,char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 void* FUNC13 (int,int) ; 
 char* FUNC14 (char const*,int) ; 
 char* FUNC15 (char const*,int) ; 

struct transport *FUNC16(struct remote *remote, const char *url)
{
	const char *helper;
	struct transport *ret = FUNC13(1, sizeof(*ret));

	ret->progress = FUNC8(2);

	if (!remote)
		FUNC0("No remote provided to transport_get()");

	ret->got_remote_refs = 0;
	ret->remote = remote;
	helper = remote->foreign_vcs;

	if (!url && remote->url)
		url = remote->url[0];
	ret->url = url;

	/* maybe it is a foreign URL? */
	if (url) {
		const char *p = url;

		while (FUNC7(p == url, *p))
			p++;
		if (FUNC9(p, "::"))
			helper = FUNC15(url, p - url);
	}

	if (helper) {
		FUNC11(ret, helper);
	} else if (FUNC9(url, "rsync:")) {
		FUNC2(FUNC1("git-over-rsync is no longer supported"));
	} else if (FUNC12(url) && FUNC5(url) && FUNC4(url, 1)) {
		struct bundle_transport_data *data = FUNC13(1, sizeof(*data));
		FUNC10("file");
		ret->data = data;
		ret->vtable = &bundle_vtable;
		ret->smart_options = NULL;
	} else if (!FUNC6(url)
		|| FUNC9(url, "file://")
		|| FUNC9(url, "git://")
		|| FUNC9(url, "ssh://")
		|| FUNC9(url, "git+ssh://") /* deprecated - do not use */
		|| FUNC9(url, "ssh+git://") /* deprecated - do not use */
		) {
		/*
		 * These are builtin smart transports; "allowed" transports
		 * will be checked individually in git_connect.
		 */
		struct git_transport_data *data = FUNC13(1, sizeof(*data));
		ret->data = data;
		ret->vtable = &builtin_smart_vtable;
		ret->smart_options = &(data->options);

		data->conn = NULL;
		data->got_remote_heads = 0;
	} else {
		/* Unknown protocol in URL. Pass to external handler. */
		int len = FUNC3(url);
		char *handler = FUNC14(url, len);
		FUNC11(ret, handler);
	}

	if (ret->smart_options) {
		ret->smart_options->thin = 1;
		ret->smart_options->uploadpack = "git-upload-pack";
		if (remote->uploadpack)
			ret->smart_options->uploadpack = remote->uploadpack;
		ret->smart_options->receivepack = "git-receive-pack";
		if (remote->receivepack)
			ret->smart_options->receivepack = remote->receivepack;
	}

	return ret;
}