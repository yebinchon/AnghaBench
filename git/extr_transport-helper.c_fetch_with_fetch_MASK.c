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
struct transport {int /*<<< orphan*/  pack_lockfile; struct helper_data* data; } ;
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct ref {int status; scalar_t__ name; scalar_t__ symref; int /*<<< orphan*/  old_oid; } ;
struct TYPE_2__ {int self_contained_and_connected; scalar_t__ check_self_contained_and_connected; } ;
struct helper_data {int /*<<< orphan*/  name; TYPE_1__ transport_options; scalar_t__ check_connectivity; } ;

/* Variables and functions */
 int REF_STATUS_UPTODATE ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct helper_data*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct helper_data*,struct strbuf*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(struct transport *transport,
			    int nr_heads, struct ref **to_fetch)
{
	struct helper_data *data = transport->data;
	int i;
	struct strbuf buf = STRBUF_INIT;

	for (i = 0; i < nr_heads; i++) {
		const struct ref *posn = to_fetch[i];
		if (posn->status & REF_STATUS_UPTODATE)
			continue;

		FUNC7(&buf, "fetch %s %s\n",
			    FUNC2(&posn->old_oid),
			    posn->symref ? posn->symref : posn->name);
	}

	FUNC6(&buf, '\n');
	FUNC4(data, &buf);

	while (1) {
		if (FUNC3(data, &buf))
			FUNC1(128);

		if (FUNC5(buf.buf, "lock ")) {
			const char *name = buf.buf + 5;
			if (transport->pack_lockfile)
				FUNC10(FUNC0("%s also locked %s"), data->name, name);
			else
				transport->pack_lockfile = FUNC11(name);
		}
		else if (data->check_connectivity &&
			 data->transport_options.check_self_contained_and_connected &&
			 !FUNC9(buf.buf, "connectivity-ok"))
			data->transport_options.self_contained_and_connected = 1;
		else if (!buf.len)
			break;
		else
			FUNC10(FUNC0("%s unexpectedly said: '%s'"), data->name, buf.buf);
	}
	FUNC8(&buf);
	return 0;
}