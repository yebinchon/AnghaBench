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
struct bufferevent_openssl {scalar_t__ underlying; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_openssl*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_openssl*) ; 
 int FUNC4 (struct bufferevent_openssl*) ; 
 int FUNC5 (struct bufferevent_openssl*) ; 
 struct bufferevent_openssl* FUNC6 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC7(struct bufferevent *bev, short events)
{
	struct bufferevent_openssl *bev_ssl = FUNC6(bev);
	int r1 = 0, r2 = 0;

	if (events & EV_READ)
		r1 = FUNC4(bev_ssl);
	if (events & EV_WRITE)
		r2 = FUNC5(bev_ssl);

	if (bev_ssl->underlying) {
		if (events & EV_READ)
			FUNC0(bev);
		if (events & EV_WRITE)
			FUNC1(bev);

		if (events & EV_READ)
			FUNC2(bev_ssl);
		if (events & EV_WRITE)
			FUNC3(bev_ssl);
	}
	return (r1 < 0 || r2 < 0) ? -1 : 0;
}