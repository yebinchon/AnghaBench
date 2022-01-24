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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_storage {TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr_in {TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct evdns_server_port {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  sin ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (scalar_t__,struct sockaddr*,int) ; 
 struct evdns_server_port* FUNC1 (struct event_base*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_base*,struct sockaddr*,int,int /*<<< orphan*/ ) ; 
 struct evdns_base* FUNC4 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC7 (struct event_base*) ; 
 struct event_base* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct event_base*,struct evdns_base*) ; 
 int /*<<< orphan*/  gaic_server_cb ; 
 scalar_t__ FUNC12 (scalar_t__,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17(void *ptr)
{
	struct event_base *base;
	struct evdns_base *dns_base = NULL;
	struct evdns_server_port *server = NULL;
	evutil_socket_t fd = -1;
	struct sockaddr_in sin;
	struct sockaddr_storage ss;
	ev_socklen_t slen;
	unsigned i;

	base = FUNC8();
	dns_base = FUNC4(base, 0);

	FUNC14(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = 0;
	sin.sin_addr.s_addr = FUNC13(0x7f000001);
	if ((fd = FUNC15(AF_INET, SOCK_DGRAM, 0)) < 0) {
		FUNC16("socket");
	}
	FUNC10(fd);
	if (FUNC0(fd, (struct sockaddr*)&sin, sizeof(sin))<0) {
		FUNC16("bind");
	}
	server = FUNC1(base, fd, 0, gaic_server_cb,
	    base);

	FUNC14(&ss, 0, sizeof(ss));
	slen = sizeof(ss);
	if (FUNC12(fd, (struct sockaddr*)&ss, &slen)<0) {
		FUNC16("getsockname");
	}
	FUNC3(dns_base,
	    (struct sockaddr*)&ss, slen, 0);

	for (i = 0; i < 1000; ++i) {
		FUNC11(base, dns_base);
	}

	FUNC6(base);

end:
	if (dns_base)
		FUNC2(dns_base, 1);
	if (server)
		FUNC5(server);
	if (base)
		FUNC7(base);
	if (fd >= 0)
		FUNC9(fd);
}