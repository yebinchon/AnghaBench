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
struct bufferevent {int dummy; } ;
typedef  enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 short BEV_EVENT_TIMEOUT ; 
 int REGRESS_OPENSSL_CLIENT ; 
 int REGRESS_OPENSSL_CLIENT_WRITE ; 
 int REGRESS_OPENSSL_FD ; 
 int REGRESS_OPENSSL_FILTER ; 
 int REGRESS_OPENSSL_FREED ; 
 int REGRESS_OPENSSL_SERVER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 int /*<<< orphan*/ * FUNC7 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  got_close ; 
 int /*<<< orphan*/  got_error ; 
 int /*<<< orphan*/  got_timeout ; 
 int /*<<< orphan*/  n_connected ; 
 scalar_t__ pending_connect_events ; 
 scalar_t__ stop_when_connected ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct bufferevent *bev, short what, void *ctx)
{
	X509 *peer_cert = NULL;
	enum regress_openssl_type type;

	type = (enum regress_openssl_type)ctx;

	FUNC1(("Got event %d", (int)what));
	if (what & BEV_EVENT_CONNECTED) {
		SSL *ssl;
		++n_connected;
		ssl = FUNC7(bev);
		FUNC10(ssl);
		peer_cert = FUNC0(ssl);
		if (type & REGRESS_OPENSSL_SERVER) {
			FUNC10(peer_cert == NULL);
		} else {
			FUNC10(peer_cert != NULL);
		}
		if (stop_when_connected) {
			if (--pending_connect_events == 0)
				FUNC9(exit_base, NULL);
		}

		if ((type & REGRESS_OPENSSL_CLIENT_WRITE) && (type & REGRESS_OPENSSL_CLIENT))
			FUNC8(FUNC4(bev), "1\n");
	} else if (what & BEV_EVENT_EOF) {
		FUNC1(("Got a good EOF"));
		++got_close;
		if (type & REGRESS_OPENSSL_FD) {
			FUNC5(bev, type & REGRESS_OPENSSL_FILTER);
		}
		if (type & REGRESS_OPENSSL_FREED) {
			FUNC6(bev);
		}
		FUNC3(bev);
	} else if (what & BEV_EVENT_ERROR) {
		FUNC1(("Got an error."));
		++got_error;
		if (type & REGRESS_OPENSSL_FD) {
			FUNC5(bev, type & REGRESS_OPENSSL_FILTER);
		}
		if (type & REGRESS_OPENSSL_FREED) {
			FUNC6(bev);
		}
		FUNC3(bev);
	} else if (what & BEV_EVENT_TIMEOUT) {
		FUNC1(("Got timeout."));
		++got_timeout;
		if (type & REGRESS_OPENSSL_FD) {
			FUNC5(bev, type & REGRESS_OPENSSL_FILTER);
		}
		if (type & REGRESS_OPENSSL_FREED) {
			FUNC6(bev);
		}
		FUNC3(bev);
	}

end:
	if (peer_cert)
		FUNC2(peer_cert);
}