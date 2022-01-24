#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {char* port; int /*<<< orphan*/  address; } ;
struct TYPE_5__ {char* port; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {scalar_t__ listen; scalar_t__ ssl; } ;
struct options {int max_read; TYPE_3__ dst; TYPE_2__ src; TYPE_1__ extra; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct evconnlistener {int dummy; } ;
struct context {int /*<<< orphan*/  ssl; struct bufferevent* out; struct bufferevent* in; int /*<<< orphan*/  fout; struct options* opts; } ;
struct bufferevent {int dummy; } ;
typedef  scalar_t__ ev_socklen_t ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int EV_READ ; 
 int EV_WRITE ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int LEV_OPT_CLOSE_ON_EXEC ; 
 int LEV_OPT_CLOSE_ON_FREE ; 
 int LEV_OPT_REUSEABLE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  accept_cb ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent**) ; 
 struct bufferevent* FUNC4 (struct context*,struct event_base*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int) ; 
 scalar_t__ FUNC6 (struct bufferevent*,int) ; 
 scalar_t__ FUNC7 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct context*) ; 
 scalar_t__ FUNC9 (struct bufferevent*,struct sockaddr*,scalar_t__) ; 
 struct bufferevent* FUNC10 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_event_cb ; 
 int /*<<< orphan*/  do_term ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct evconnlistener*) ; 
 struct evconnlistener* FUNC13 (struct event_base*,int /*<<< orphan*/ ,struct context*,int,int,struct sockaddr*,scalar_t__) ; 
 scalar_t__ FUNC14 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC16 (struct event_base*) ; 
 struct event_base* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct event*) ; 
 struct event* FUNC19 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct event_base*) ; 
 int /*<<< orphan*/  FUNC20 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_event_cb ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 scalar_t__ FUNC23 (struct sockaddr_storage*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct context*,int /*<<< orphan*/ ,int) ; 
 struct options FUNC25 (int,char**) ; 
 int /*<<< orphan*/  read_cb ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  trigger_bev_write_cb ; 
 int /*<<< orphan*/ * write_cb ; 

int FUNC29(int argc, char **argv)
{
	struct event_base *base = NULL;
	struct event *term = NULL;
	struct evconnlistener *listener = NULL;
	struct bufferevent *bev = NULL;
	struct sockaddr_storage ss;
	struct sockaddr *sa = (struct sockaddr *)&ss;
	ev_socklen_t ss_len;
	char buffer[128];

	struct context ctx;
	struct options o = FUNC25(argc, argv);
	int err = EXIT_SUCCESS;

	FUNC24(&ctx, 0, sizeof(ctx));
	ctx.opts = &o;

	base = FUNC17();
	if (!base)
		goto err;

	term = FUNC19(base, SIGINT, do_term, base);
	if (!term)
		goto err;
	if (FUNC14(term, NULL))
		goto err;

#ifdef _WIN32
	{
		WORD wVersionRequested;
		WSADATA wsaData;
		wVersionRequested = MAKEWORD(2, 2);
		WSAStartup(wVersionRequested, &wsaData);
	}
#else
	if (FUNC26(SIGPIPE, SIG_IGN) == SIG_ERR)
		goto err;
#endif

	if (o.extra.ssl && FUNC28(&ctx.ssl))
		goto err;

	if (o.extra.listen) {
		int flags = 0;
		flags |= LEV_OPT_CLOSE_ON_FREE;
		flags |= LEV_OPT_CLOSE_ON_EXEC;
		flags |= LEV_OPT_REUSEABLE;

		ss_len = FUNC23(&ss, o.src.address, o.src.port);
		if (!ss_len) {
			FUNC11("Cannot make address from %s:%d\n",
				o.src.address, o.src.port);
			goto err;
		}
		FUNC22("Listening on %s\n",
			FUNC20(sa, buffer, sizeof(buffer)-1));
		listener = FUNC13(base, accept_cb, &ctx, flags, -1, sa, ss_len);
		if (!listener) {
			FUNC11("Cannot listen\n");
			goto err;
		}
	} else {
		ss_len = FUNC23(&ss, o.dst.address, o.dst.port);
		if (!ss_len) {
			FUNC11("Cannot make address from %s:%d\n",
				o.src.address, o.src.port);
			goto err;
		}
		FUNC22("Connecting to %s\n",
			FUNC20(sa, buffer, sizeof(buffer)-1));

		bev = FUNC4(&ctx, base, -1);
		if (!bev) {
			FUNC11("Cannot make bufferevent\n");
			goto err;
		}

		FUNC8(bev, read_cb, write_cb, client_event_cb, &ctx);
		if (FUNC6(bev, EV_READ|EV_WRITE)) {
			FUNC11("Cannot monitor EV_READ|EV_WRITE for client\n");
			goto err;
		}

		if (FUNC9(bev, sa, ss_len)) {
			FUNC22("Connection failed\n");
			goto err;
		}
	}

	ctx.out = bev;
	ctx.fout = stdout;

	ctx.in = FUNC10(base, STDIN_FILENO, 0);
	if (o.max_read != -1) {
		if (FUNC7(ctx.in, o.max_read))
			goto err;
	}
	if (!ctx.in) {
		FUNC11("Cannot create input bufferevent\n");
		goto err;
	}
	FUNC8(ctx.in, trigger_bev_write_cb, NULL, in_event_cb, &ctx);
	if (ctx.out && FUNC6(ctx.in, EV_READ)) {
		FUNC11("Cannot monitor EV_READ on input\n");
		goto err;
	}
	FUNC5(ctx.in, EV_WRITE);

	if (!FUNC15(base))
		goto out;

err:
	if (!err)
		err = EXIT_FAILURE;

out:
	if (term)
		FUNC18(term);
	FUNC3(&ctx.in);
	FUNC3(&ctx.out);
	if (listener)
		FUNC12(listener);
	if (base)
		FUNC16(base);

	FUNC21(o.src.address);
	FUNC21(o.dst.address);

	FUNC27(&ctx.ssl);

#ifdef _WIN32
	WSACleanup();
#endif

	return err;
}