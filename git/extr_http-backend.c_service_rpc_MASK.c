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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct rpc_service {char* name; int /*<<< orphan*/  buffer_input; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  content_type ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ ) ; 
 struct rpc_service* FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 

__attribute__((used)) static void FUNC9(struct strbuf *hdr, char *service_name)
{
	const char *argv[] = {NULL, "--stateless-rpc", ".", NULL};
	struct rpc_service *svc = FUNC5(hdr, service_name);
	struct strbuf buf = STRBUF_INIT;

	FUNC8(&buf);
	FUNC6(&buf, "application/x-git-%s-request", svc->name);
	FUNC0(hdr, buf.buf);

	FUNC2(hdr);

	FUNC8(&buf);
	FUNC6(&buf, "application/x-git-%s-result", svc->name);
	FUNC3(hdr, content_type, buf.buf);

	FUNC1(hdr);

	argv[0] = svc->name;
	FUNC4(argv, svc->buffer_input);
	FUNC7(&buf);
}