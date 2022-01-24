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
struct strbuf {int dummy; } ;
struct imap_store {int /*<<< orphan*/  name; } ;
struct imap_server_conf {scalar_t__ use_html; int /*<<< orphan*/  folder; } ;

/* Variables and functions */
 int DRV_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct imap_store*) ; 
 struct imap_store* FUNC2 (struct imap_server_conf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct imap_store*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,struct strbuf*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static int FUNC6(struct imap_server_conf *server,
			       struct strbuf* all_msgs, int total)
{
	struct strbuf msg = STRBUF_INIT;
	struct imap_store *ctx = NULL;
	int ofs = 0;
	int r;
	int n = 0;

	ctx = FUNC2(server, server->folder);
	if (!ctx) {
		FUNC0(stderr, "failed to open store\n");
		return 1;
	}
	ctx->name = server->folder;

	FUNC0(stderr, "sending %d message%s\n", total, (total != 1) ? "s" : "");
	while (1) {
		unsigned percent = n * 100 / total;

		FUNC0(stderr, "%4u%% (%d/%d) done\r", percent, n, total);

		if (!FUNC4(all_msgs, &msg, &ofs))
			break;
		if (server->use_html)
			FUNC5(&msg);
		r = FUNC3(ctx, &msg);
		if (r != DRV_OK)
			break;
		n++;
	}
	FUNC0(stderr, "\n");

	FUNC1(ctx);

	return 0;
}