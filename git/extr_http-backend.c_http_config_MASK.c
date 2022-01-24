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
struct strbuf {char* buf; } ;
struct rpc_service {int enabled; int /*<<< orphan*/  config_name; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_service*) ; 
 struct strbuf STRBUF_INIT ; 
 int getanyfile ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max_request_buffer ; 
 struct rpc_service* rpc_service ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i, value = 0;
	struct strbuf var = STRBUF_INIT;

	FUNC1("http.getanyfile", &getanyfile);
	FUNC2("http.maxrequestbuffer", &max_request_buffer);

	for (i = 0; i < FUNC0(rpc_service); i++) {
		struct rpc_service *svc = &rpc_service[i];
		FUNC3(&var, "http.%s", svc->config_name);
		if (!FUNC1(var.buf, &value))
			svc->enabled = value;
		FUNC5(&var);
	}

	FUNC4(&var);
}