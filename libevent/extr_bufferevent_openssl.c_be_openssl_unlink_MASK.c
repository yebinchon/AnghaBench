#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int options; } ;
struct bufferevent_openssl {TYPE_2__* underlying; TYPE_1__ bev; } ;
struct bufferevent {int dummy; } ;
struct TYPE_9__ {int refcnt; } ;
struct TYPE_8__ {scalar_t__ errorcb; } ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
 TYPE_5__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ be_openssl_eventcb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct bufferevent_openssl* FUNC5 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *bev)
{
	struct bufferevent_openssl *bev_ssl = FUNC5(bev);

	if (bev_ssl->bev.options & BEV_OPT_CLOSE_ON_FREE) {
		if (bev_ssl->underlying) {
			if (FUNC0(bev_ssl->underlying)->refcnt < 2) {
				FUNC4("BEV_OPT_CLOSE_ON_FREE set on an "
				    "bufferevent with too few references");
			} else {
				FUNC1(bev_ssl->underlying);
				/* We still have a reference to it, via our
				 * BIO. So we don't drop this. */
				// bev_ssl->underlying = NULL;
			}
		}
	} else {
		if (bev_ssl->underlying) {
			if (bev_ssl->underlying->errorcb == be_openssl_eventcb)
				FUNC2(bev_ssl->underlying,
				    NULL,NULL,NULL,NULL);
			FUNC3(bev_ssl->underlying,
			    BEV_SUSPEND_FILT_READ);
		}
	}
}