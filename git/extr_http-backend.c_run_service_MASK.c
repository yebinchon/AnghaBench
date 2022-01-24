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
struct child_process {char const** argv; int in; int git_cmd; int clean_on_exit; int wait_after_clean; int /*<<< orphan*/  env_array; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct child_process*) ; 
 scalar_t__ FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,scalar_t__) ; 
 scalar_t__ FUNC9 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 

__attribute__((used)) static void FUNC11(const char **argv, int buffer_input)
{
	const char *encoding = FUNC6("HTTP_CONTENT_ENCODING");
	const char *user = FUNC6("REMOTE_USER");
	const char *host = FUNC6("REMOTE_ADDR");
	int gzipped_request = 0;
	struct child_process cld = CHILD_PROCESS_INIT;
	ssize_t req_len = FUNC5();

	if (encoding && !FUNC10(encoding, "gzip"))
		gzipped_request = 1;
	else if (encoding && !FUNC10(encoding, "x-gzip"))
		gzipped_request = 1;

	if (!user || !*user)
		user = "anonymous";
	if (!host || !*host)
		host = "(none)";

	if (!FUNC6("GIT_COMMITTER_NAME"))
		FUNC0(&cld.env_array, "GIT_COMMITTER_NAME=%s", user);
	if (!FUNC6("GIT_COMMITTER_EMAIL"))
		FUNC0(&cld.env_array,
				 "GIT_COMMITTER_EMAIL=%s@http.%s", user, host);

	cld.argv = argv;
	if (buffer_input || gzipped_request || req_len >= 0)
		cld.in = -1;
	cld.git_cmd = 1;
	cld.clean_on_exit = 1;
	cld.wait_after_clean = 1;
	if (FUNC9(&cld))
		FUNC3(1);

	FUNC1(1);
	if (gzipped_request)
		FUNC7(argv[0], cld.in, buffer_input, req_len);
	else if (buffer_input)
		FUNC2(argv[0], cld.in, req_len);
	else if (req_len >= 0)
		FUNC8(argv[0], cld.in, req_len);
	else
		FUNC1(0);

	if (FUNC4(&cld))
		FUNC3(1);
}