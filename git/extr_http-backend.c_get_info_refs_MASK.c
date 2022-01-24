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
struct rpc_service {char* name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  content_type ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct strbuf*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char*) ; 
 scalar_t__ protocol_v2 ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 struct rpc_service* FUNC10 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,struct strbuf*) ; 
 int /*<<< orphan*/  show_text_ref ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 

__attribute__((used)) static void FUNC14(struct strbuf *hdr, char *arg)
{
	const char *service_name = FUNC3("service");
	struct strbuf buf = STRBUF_INIT;

	FUNC4(hdr);

	if (service_name) {
		const char *argv[] = {NULL /* service name */,
			"--stateless-rpc", "--advertise-refs",
			".", NULL};
		struct rpc_service *svc = FUNC10(hdr, service_name);

		FUNC12(&buf, "application/x-git-%s-advertisement",
			svc->name);
		FUNC5(hdr, content_type, buf.buf);
		FUNC1(hdr);


		if (FUNC0() != protocol_v2) {
			FUNC7(1, "# service=git-%s\n", svc->name);
			FUNC6(1);
		}

		argv[0] = svc->name;
		FUNC8(argv, 0);

	} else {
		FUNC9(hdr);
		FUNC2(show_text_ref, &buf);
		FUNC11(hdr, "text/plain", &buf);
	}
	FUNC13(&buf);
}