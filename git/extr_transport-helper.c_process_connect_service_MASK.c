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
struct transport {int stateless_rpc; struct helper_data* data; } ;
struct strbuf {int dummy; } ;
struct helper_data {scalar_t__ stateless_connect; scalar_t__ connect; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ protocol_v2 ; 
 int FUNC2 (struct transport*,struct strbuf*) ; 
 int FUNC3 (struct transport*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct transport *transport,
				   const char *name, const char *exec)
{
	struct helper_data *data = transport->data;
	struct strbuf cmdbuf = STRBUF_INIT;
	int ret = 0;

	/*
	 * Handle --upload-pack and friends. This is fire and forget...
	 * just warn if it fails.
	 */
	if (FUNC6(name, exec)) {
		int r = FUNC3(transport, "servpath", exec);
		if (r > 0)
			FUNC7(FUNC0("setting remote service path not supported by protocol"));
		else if (r < 0)
			FUNC7(FUNC0("invalid remote service path"));
	}

	if (data->connect) {
		FUNC4(&cmdbuf, "connect %s\n", name);
		ret = FUNC2(transport, &cmdbuf);
	} else if (data->stateless_connect &&
		   (FUNC1() == protocol_v2) &&
		   !FUNC6("git-upload-pack", name)) {
		FUNC4(&cmdbuf, "stateless-connect %s\n", name);
		ret = FUNC2(transport, &cmdbuf);
		if (ret)
			transport->stateless_rpc = 1;
	}

	FUNC5(&cmdbuf);
	return ret;
}