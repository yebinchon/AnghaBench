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
struct strbuf {int /*<<< orphan*/  len; } ;
struct imap_store {char* name; char* prefix; struct imap* imap; } ;
struct imap_cmd_cb {int /*<<< orphan*/  data; int /*<<< orphan*/  dlen; } ;
struct imap {int /*<<< orphan*/  rcaps; int /*<<< orphan*/  caps; } ;
typedef  int /*<<< orphan*/  cb ;

/* Variables and functions */
 int DRV_OK ; 
 int FUNC0 (struct imap_store*,struct imap_cmd_cb*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct imap_cmd_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(struct imap_store *ctx, struct strbuf *msg)
{
	struct imap *imap = ctx->imap;
	struct imap_cmd_cb cb;
	const char *prefix, *box;
	int ret;

	FUNC1(msg);
	FUNC2(&cb, 0, sizeof(cb));

	cb.dlen = msg->len;
	cb.data = FUNC3(msg, NULL);

	box = ctx->name;
	prefix = !FUNC4(box, "INBOX") ? "" : ctx->prefix;
	ret = FUNC0(ctx, &cb, "APPEND \"%s%s\" ", prefix, box);
	imap->caps = imap->rcaps;
	if (ret != DRV_OK)
		return ret;

	return DRV_OK;
}