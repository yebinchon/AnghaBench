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
struct TYPE_5__ {int s_addr; } ;
struct sockaddr_in {int ai_addrlen; int /*<<< orphan*/  cont; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct sockaddr_in* ai_next; } ;
struct sockaddr {int dummy; } ;
struct imap_store {char* name; char* prefix; struct imap* imap; } ;
struct imap_server_conf {char* host; char* auth_method; char* user; int /*<<< orphan*/  pass; int /*<<< orphan*/  ssl_verify; scalar_t__ use_ssl; int /*<<< orphan*/  port; scalar_t__ tunnel; } ;
struct imap_cmd_cb {int ai_addrlen; int /*<<< orphan*/  cont; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct imap_cmd_cb* ai_next; } ;
struct TYPE_4__ {int* fd; int /*<<< orphan*/  ssl; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;
struct imap {TYPE_3__ buf; int /*<<< orphan*/  caps; int /*<<< orphan*/  in_progress; int /*<<< orphan*/ * in_progress_append; } ;
struct hostent {scalar_t__* h_addr_list; } ;
struct credential {scalar_t__ username; } ;
struct child_process {int use_shell; int in; int out; int /*<<< orphan*/  args; } ;
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  cont; int /*<<< orphan*/  sin_port; TYPE_2__ sin_addr; int /*<<< orphan*/  sin_family; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  cb ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AUTH_CRAM_MD5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 struct credential CREDENTIAL_INIT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  NOLOGIN ; 
 int /*<<< orphan*/  PF_INET ; 
#define  RESP_BAD 130 
#define  RESP_NO 129 
#define  RESP_OK 128 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  STARTTLS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  auth_cram_md5 ; 
 scalar_t__ FUNC2 (TYPE_3__*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct credential*) ; 
 int /*<<< orphan*/  FUNC6 (struct credential*) ; 
 int /*<<< orphan*/  FUNC7 (struct credential*) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr_in*) ; 
 char* FUNC13 (int) ; 
 int FUNC14 (char*,char*,struct sockaddr_in*,struct sockaddr_in**) ; 
 struct hostent* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct sockaddr*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct imap_store*) ; 
 scalar_t__ const FUNC19 (struct imap_store*,struct sockaddr_in*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC23 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 char* FUNC24 (char**) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct imap_store*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (struct imap_server_conf*,struct credential*) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (struct child_process*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC32 (char*,char*) ; 
 void* FUNC33 (int,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct imap_store *FUNC35(struct imap_server_conf *srvc, char *folder)
{
	struct credential cred = CREDENTIAL_INIT;
	struct imap_store *ctx;
	struct imap *imap;
	char *arg, *rsp;
	int s = -1, preauth;

	ctx = FUNC33(1, sizeof(*ctx));

	ctx->imap = imap = FUNC33(1, sizeof(*imap));
	imap->buf.sock.fd[0] = imap->buf.sock.fd[1] = -1;
	imap->in_progress_append = &imap->in_progress;

	/* open connection to IMAP server */

	if (srvc->tunnel) {
		struct child_process tunnel = CHILD_PROCESS_INIT;

		FUNC20("Starting tunnel '%s'... ", srvc->tunnel);

		FUNC1(&tunnel.args, srvc->tunnel);
		tunnel.use_shell = 1;
		tunnel.in = -1;
		tunnel.out = -1;
		if (FUNC31(&tunnel))
			FUNC8("cannot start proxy %s", srvc->tunnel);

		imap->buf.sock.fd[0] = tunnel.out;
		imap->buf.sock.fd[1] = tunnel.in;

		FUNC20("ok\n");
	} else {
#ifndef NO_IPV6
		struct addrinfo hints, *ai0, *ai;
		int gai;
		char portstr[6];

		FUNC34(portstr, sizeof(portstr), "%d", srvc->port);

		FUNC23(&hints, 0, sizeof(hints));
		hints.ai_socktype = SOCK_STREAM;
		hints.ai_protocol = IPPROTO_TCP;

		FUNC20("Resolving %s... ", srvc->host);
		gai = FUNC14(srvc->host, portstr, &hints, &ai);
		if (gai) {
			FUNC10(stderr, "getaddrinfo: %s\n", FUNC13(gai));
			goto bail;
		}
		FUNC20("ok\n");

		for (ai0 = ai; ai; ai = ai->ai_next) {
			char addr[NI_MAXHOST];

			s = FUNC29(ai->ai_family, ai->ai_socktype,
				   ai->ai_protocol);
			if (s < 0)
				continue;

			FUNC16(ai->ai_addr, ai->ai_addrlen, addr,
				    sizeof(addr), NULL, 0, NI_NUMERICHOST);
			FUNC20("Connecting to [%s]:%s... ", addr, portstr);

			if (FUNC4(s, ai->ai_addr, ai->ai_addrlen) < 0) {
				FUNC3(s);
				s = -1;
				FUNC27("connect");
				continue;
			}

			break;
		}
		FUNC12(ai0);
#else /* NO_IPV6 */
		struct hostent *he;
		struct sockaddr_in addr;

		memset(&addr, 0, sizeof(addr));
		addr.sin_port = htons(srvc->port);
		addr.sin_family = AF_INET;

		imap_info("Resolving %s... ", srvc->host);
		he = gethostbyname(srvc->host);
		if (!he) {
			perror("gethostbyname");
			goto bail;
		}
		imap_info("ok\n");

		addr.sin_addr.s_addr = *((int *) he->h_addr_list[0]);

		s = socket(PF_INET, SOCK_STREAM, 0);

		imap_info("Connecting to %s:%hu... ", inet_ntoa(addr.sin_addr), ntohs(addr.sin_port));
		if (connect(s, (struct sockaddr *)&addr, sizeof(addr))) {
			close(s);
			s = -1;
			perror("connect");
		}
#endif
		if (s < 0) {
			FUNC11("Error: unable to connect to server.\n", stderr);
			goto bail;
		}

		imap->buf.sock.fd[0] = s;
		imap->buf.sock.fd[1] = FUNC9(s);

		if (srvc->use_ssl &&
		    FUNC30(&imap->buf.sock, 0, srvc->ssl_verify)) {
			FUNC3(s);
			goto bail;
		}
		FUNC20("ok\n");
	}

	/* read the greeting string */
	if (FUNC2(&imap->buf, &rsp)) {
		FUNC10(stderr, "IMAP error: no greeting response\n");
		goto bail;
	}
	arg = FUNC24(&rsp);
	if (!arg || *arg != '*' || (arg = FUNC24(&rsp)) == NULL) {
		FUNC10(stderr, "IMAP error: invalid greeting response\n");
		goto bail;
	}
	preauth = 0;
	if (!FUNC32("PREAUTH", arg))
		preauth = 1;
	else if (FUNC32("OK", arg) != 0) {
		FUNC10(stderr, "IMAP error: unknown greeting response\n");
		goto bail;
	}
	FUNC26(ctx, NULL, rsp);
	if (!imap->caps && FUNC19(ctx, NULL, "CAPABILITY") != RESP_OK)
		goto bail;

	if (!preauth) {
#ifndef NO_OPENSSL
		if (!srvc->use_ssl && FUNC0(STARTTLS)) {
			if (FUNC19(ctx, NULL, "STARTTLS") != RESP_OK)
				goto bail;
			if (FUNC30(&imap->buf.sock, 1,
					       srvc->ssl_verify))
				goto bail;
			/* capabilities may have changed, so get the new capabilities */
			if (FUNC19(ctx, NULL, "CAPABILITY") != RESP_OK)
				goto bail;
		}
#endif
		FUNC20("Logging in...\n");
		FUNC28(srvc, &cred);

		if (srvc->auth_method) {
			struct imap_cmd_cb cb;

			if (!FUNC32(srvc->auth_method, "CRAM-MD5")) {
				if (!FUNC0(AUTH_CRAM_MD5)) {
					FUNC10(stderr, "You specified "
						"CRAM-MD5 as authentication method, "
						"but %s doesn't support it.\n", srvc->host);
					goto bail;
				}
				/* CRAM-MD5 */

				FUNC23(&cb, 0, sizeof(cb));
				cb.cont = auth_cram_md5;
				if (FUNC19(ctx, &cb, "AUTHENTICATE CRAM-MD5") != RESP_OK) {
					FUNC10(stderr, "IMAP error: AUTHENTICATE CRAM-MD5 failed\n");
					goto bail;
				}
			} else {
				FUNC10(stderr, "Unknown authentication method:%s\n", srvc->host);
				goto bail;
			}
		} else {
			if (FUNC0(NOLOGIN)) {
				FUNC10(stderr, "Skipping account %s@%s, server forbids LOGIN\n",
					srvc->user, srvc->host);
				goto bail;
			}
			if (!imap->buf.sock.ssl)
				FUNC21("*** IMAP Warning *** Password is being "
					  "sent in the clear\n");
			if (FUNC19(ctx, NULL, "LOGIN \"%s\" \"%s\"", srvc->user, srvc->pass) != RESP_OK) {
				FUNC10(stderr, "IMAP error: LOGIN failed\n");
				goto bail;
			}
		}
	} /* !preauth */

	if (cred.username)
		FUNC5(&cred);
	FUNC6(&cred);

	/* check the target mailbox exists */
	ctx->name = folder;
	switch (FUNC19(ctx, NULL, "EXAMINE \"%s\"", ctx->name)) {
	case RESP_OK:
		/* ok */
		break;
	case RESP_BAD:
		FUNC10(stderr, "IMAP error: could not check mailbox\n");
		goto out;
	case RESP_NO:
		if (FUNC19(ctx, NULL, "CREATE \"%s\"", ctx->name) == RESP_OK) {
			FUNC20("Created missing mailbox\n");
		} else {
			FUNC10(stderr, "IMAP error: could not create missing mailbox\n");
			goto out;
		}
		break;
	}

	ctx->prefix = "";
	return ctx;

bail:
	if (cred.username)
		FUNC7(&cred);
	FUNC6(&cred);

 out:
	FUNC18(ctx);
	return NULL;
}