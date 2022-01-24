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
struct bufferevent_openssl {int state; int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  enum bufferevent_ssl_state { ____Placeholder_bufferevent_ssl_state } bufferevent_ssl_state ;

/* Variables and functions */
#define  BUFFEREVENT_SSL_ACCEPTING 130 
#define  BUFFEREVENT_SSL_CONNECTING 129 
#define  BUFFEREVENT_SSL_OPEN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_openssl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent_openssl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct bufferevent_openssl *bev_ssl,
    enum bufferevent_ssl_state state, evutil_socket_t fd)
{
	bev_ssl->state = state;

	switch (state) {
	case BUFFEREVENT_SSL_ACCEPTING:
		if (!FUNC0(bev_ssl->ssl))
			return -1;
		FUNC1(bev_ssl->ssl);
		if (FUNC3(bev_ssl, fd) < 0)
			return -1;
		break;
	case BUFFEREVENT_SSL_CONNECTING:
		if (!FUNC0(bev_ssl->ssl))
			return -1;
		FUNC2(bev_ssl->ssl);
		if (FUNC3(bev_ssl, fd) < 0)
			return -1;
		break;
	case BUFFEREVENT_SSL_OPEN:
		if (FUNC4(bev_ssl, fd) < 0)
			return -1;
		break;
	default:
		return -1;
	}

	return 0;
}