#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct service_cmd {char* method; int /*<<< orphan*/  (* imp ) (struct strbuf*,char*) ;int /*<<< orphan*/  pattern; } ;
struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int FUNC0 (struct service_cmd*) ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct strbuf*,struct service_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  die_webcgi ; 
 int /*<<< orphan*/  die_webcgi_recursing ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  max_request_buffer ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct service_cmd* services ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char*) ; 
 char* FUNC18 (char*,size_t) ; 

int FUNC19(int argc, const char **argv)
{
	char *method = FUNC6("REQUEST_METHOD");
	char *dir;
	struct service_cmd *cmd = NULL;
	char *cmd_arg = NULL;
	int i;
	struct strbuf hdr = STRBUF_INIT;

	FUNC14(die_webcgi);
	FUNC13(die_webcgi_recursing);

	if (!method)
		FUNC3("No REQUEST_METHOD from server");
	if (!FUNC16(method, "HEAD"))
		method = "GET";
	dir = FUNC5();

	for (i = 0; i < FUNC0(services); i++) {
		struct service_cmd *c = &services[i];
		regex_t re;
		regmatch_t out[1];

		if (FUNC10(&re, c->pattern, REG_EXTENDED))
			FUNC3("Bogus regex in service table: %s", c->pattern);
		if (!FUNC11(&re, dir, 1, out, 0)) {
			size_t n;

			if (FUNC16(method, c->method))
				return FUNC2(&hdr, c);

			cmd = c;
			n = out[0].rm_eo - out[0].rm_so;
			cmd_arg = FUNC18(dir + out[0].rm_so + 1, n - 1);
			dir[out[0].rm_so] = 0;
			break;
		}
		FUNC12(&re);
	}

	if (!cmd)
		FUNC9(&hdr, "Request not supported: '%s'", dir);

	FUNC15();
	if (!FUNC4(dir, 0))
		FUNC9(&hdr, "Not a git repository: '%s'", dir);
	if (!FUNC6("GIT_HTTP_EXPORT_ALL") &&
	    FUNC1("git-daemon-export-ok", F_OK) )
		FUNC9(&hdr, "Repository not exported: '%s'", dir);

	FUNC8();
	max_request_buffer = FUNC7("GIT_HTTP_MAX_REQUEST_BUFFER",
					   max_request_buffer);

	cmd->imp(&hdr, cmd_arg);
	return 0;
}