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
struct TYPE_2__ {int use_ssl; int /*<<< orphan*/  auth_method; int /*<<< orphan*/  tunnel; int /*<<< orphan*/  port; int /*<<< orphan*/  pass; int /*<<< orphan*/  user; int /*<<< orphan*/  host; int /*<<< orphan*/  folder; int /*<<< orphan*/  use_html; int /*<<< orphan*/  ssl_verify; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(void)
{
	const char *val = NULL;

	FUNC0("imap.sslverify", &server.ssl_verify);
	FUNC0("imap.preformattedhtml", &server.use_html);
	FUNC2("imap.folder", &server.folder);

	if (!FUNC3("imap.host", &val)) {
		if (!val) {
			FUNC4("imap.host", "Missing value for 'imap.host'");
		} else {
			if (FUNC5(val, "imap:"))
				val += 5;
			else if (FUNC5(val, "imaps:")) {
				val += 6;
				server.use_ssl = 1;
			}
			if (FUNC5(val, "//"))
				val += 2;
			server.host = FUNC6(val);
		}
	}

	FUNC2("imap.user", &server.user);
	FUNC2("imap.pass", &server.pass);
	FUNC1("imap.port", &server.port);
	FUNC2("imap.tunnel", &server.tunnel);
	FUNC2("imap.authmethod", &server.auth_method);
}