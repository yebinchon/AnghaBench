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
struct bufferevent {int enabled; int /*<<< orphan*/  ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; scalar_t__ read_suspended; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; int /*<<< orphan*/  ssl; scalar_t__ write_blocked_on_read; } ;

/* Variables and functions */
 int EV_READ ; 
 int OP_BLOCKED ; 
 int OP_ERR ; 
 int OP_MADE_PROGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRITE_FRAME ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bufferevent_openssl*) ; 
 int FUNC3 (struct bufferevent_openssl*,int) ; 
 int FUNC4 (struct bufferevent_openssl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent_openssl *bev_ssl)
{
	int r;
	int n_to_read;
	int all_result_flags = 0;

	while (bev_ssl->write_blocked_on_read) {
		r = FUNC4(bev_ssl, WRITE_FRAME);
		if (r & (OP_BLOCKED|OP_ERR))
			break;
	}
	if (bev_ssl->write_blocked_on_read)
		return;

	n_to_read = FUNC2(bev_ssl);

	while (n_to_read) {
		r = FUNC3(bev_ssl, n_to_read);
		all_result_flags |= r;

		if (r & (OP_BLOCKED|OP_ERR))
			break;

		if (bev_ssl->bev.read_suspended)
			break;

		/* Read all pending data.  This won't hit the network
		 * again, and will (most importantly) put us in a state
		 * where we don't need to read anything else until the
		 * socket is readable again.  It'll potentially make us
		 * overrun our read high-watermark (somewhat
		 * regrettable).  The damage to the rate-limit has
		 * already been done, since OpenSSL went and read a
		 * whole SSL record anyway. */
		n_to_read = FUNC0(bev_ssl->ssl);

		/* XXX This if statement is actually a bad bug, added to avoid
		 * XXX a worse bug.
		 *
		 * The bad bug: It can potentially cause resource unfairness
		 * by reading too much data from the underlying bufferevent;
		 * it can potentially cause read looping if the underlying
		 * bufferevent is a bufferevent_pair and deferred callbacks
		 * aren't used.
		 *
		 * The worse bug: If we didn't do this, then we would
		 * potentially not read any more from bev_ssl->underlying
		 * until more data arrived there, which could lead to us
		 * waiting forever.
		 */
		if (!n_to_read && bev_ssl->underlying)
			n_to_read = FUNC2(bev_ssl);
	}

	if (all_result_flags & OP_MADE_PROGRESS) {
		struct bufferevent *bev = &bev_ssl->bev.bev;

		FUNC1(bev, EV_READ, 0);
	}

	if (!bev_ssl->underlying) {
		/* Should be redundant, but let's avoid busy-looping */
		if (bev_ssl->bev.read_suspended ||
		    !(bev_ssl->bev.bev.enabled & EV_READ)) {
			FUNC5(&bev_ssl->bev.bev.ev_read);
		}
	}
}