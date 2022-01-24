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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct rpc_state {char* service_name; int in; int out; int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * protocol_header; int /*<<< orphan*/ * hdr_accept; int /*<<< orphan*/ * hdr_content_type; int /*<<< orphan*/ * service_url; scalar_t__ pos; int /*<<< orphan*/  alloc; } ;
struct discovery {int /*<<< orphan*/  version; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct child_process {int in; int out; int git_cmd; char const** argv; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  http_post_buffer ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rpc_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*,...) ; 
 void* FUNC9 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*) ; 
 TYPE_1__ url ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int,char*,int) ; 

__attribute__((used)) static int FUNC15(struct rpc_state *rpc, struct discovery *heads,
		       const char **client_argv, const struct strbuf *preamble,
		       struct strbuf *rpc_result)
{
	const char *svc = rpc->service_name;
	struct strbuf buf = STRBUF_INIT;
	struct child_process client = CHILD_PROCESS_INIT;
	int err = 0;

	client.in = -1;
	client.out = -1;
	client.git_cmd = 1;
	client.argv = client_argv;
	if (FUNC7(&client))
		FUNC1(1);
	FUNC12(client.in, preamble->buf, preamble->len);
	if (heads)
		FUNC12(client.in, heads->buf, heads->len);

	rpc->alloc = http_post_buffer;
	rpc->buf = FUNC13(rpc->alloc);
	rpc->in = client.in;
	rpc->out = client.out;

	FUNC8(&buf, "%s%s", url.buf, svc);
	rpc->service_url = FUNC9(&buf, NULL);

	FUNC8(&buf, "Content-Type: application/x-%s-request", svc);
	rpc->hdr_content_type = FUNC9(&buf, NULL);

	FUNC8(&buf, "Accept: application/x-%s-result", svc);
	rpc->hdr_accept = FUNC9(&buf, NULL);

	if (FUNC4(heads->version, &buf))
		rpc->protocol_header = FUNC9(&buf, NULL);
	else
		rpc->protocol_header = NULL;

	while (!err) {
		int n = FUNC5(rpc->out, NULL, NULL, rpc->buf, rpc->alloc, 0);
		if (!n)
			break;
		rpc->pos = 0;
		rpc->len = n;
		err |= FUNC6(rpc, 0);
	}

	FUNC0(client.in);
	client.in = -1;
	if (!err) {
		FUNC10(rpc_result, client.out, 0);
	} else {
		char buf[4096];
		for (;;)
			if (FUNC14(client.out, buf, sizeof(buf)) <= 0)
				break;
	}

	FUNC0(client.out);
	client.out = -1;

	err |= FUNC2(&client);
	FUNC3(rpc->service_url);
	FUNC3(rpc->hdr_content_type);
	FUNC3(rpc->hdr_accept);
	FUNC3(rpc->protocol_header);
	FUNC3(rpc->buf);
	FUNC11(&buf);
	return err;
}