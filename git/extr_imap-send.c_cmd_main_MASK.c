#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {scalar_t__ len; } ;
struct TYPE_4__ {int port; char* host; scalar_t__ tunnel; int /*<<< orphan*/  folder; scalar_t__ use_ssl; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (TYPE_1__*,struct strbuf*,int) ; 
 int FUNC1 (struct strbuf*) ; 
 int FUNC2 (TYPE_1__*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  imap_send_options ; 
 int /*<<< orphan*/  imap_send_usage ; 
 int FUNC5 (int,char const**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct strbuf*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int use_curl ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(int argc, const char **argv)
{
	struct strbuf all_msgs = STRBUF_INIT;
	int total;
	int nongit_ok;

	FUNC7(&nongit_ok);
	FUNC4();

	argc = FUNC5(argc, (const char **)argv, "", imap_send_options, imap_send_usage, 0);

	if (argc)
		FUNC8(imap_send_usage, imap_send_options);

#ifndef USE_CURL_FOR_IMAP_SEND
	if (use_curl) {
		FUNC9("--curl not supported in this build");
		use_curl = 0;
	}
#elif defined(NO_OPENSSL)
	if (!use_curl) {
		warning("--no-curl not supported in this build");
		use_curl = 1;
	}
#endif

	if (!server.port)
		server.port = server.use_ssl ? 993 : 143;

	if (!server.folder) {
		FUNC3(stderr, "no imap store specified\n");
		return 1;
	}
	if (!server.host) {
		if (!server.tunnel) {
			FUNC3(stderr, "no imap host specified\n");
			return 1;
		}
		server.host = "tunnel";
	}

	/* read the messages */
	if (FUNC6(stdin, &all_msgs)) {
		FUNC3(stderr, "error reading input\n");
		return 1;
	}

	if (all_msgs.len == 0) {
		FUNC3(stderr, "nothing to send\n");
		return 1;
	}

	total = FUNC1(&all_msgs);
	if (!total) {
		FUNC3(stderr, "no messages to send\n");
		return 1;
	}

	/* write it to the imap server */

	if (server.tunnel)
		return FUNC0(&server, &all_msgs, total);

#ifdef USE_CURL_FOR_IMAP_SEND
	if (use_curl)
		return curl_append_msgs_to_imap(&server, &all_msgs, total);
#endif

	return FUNC0(&server, &all_msgs, total);
}