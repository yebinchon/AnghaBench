#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int rcv_nxt; int copied_seq; int write_seq; int snd_una; } ;
struct seq_file {struct drbd_resource* private; } ;
struct drbd_resource {int dummy; } ;
struct TYPE_4__ {TYPE_1__* socket; } ;
struct drbd_connection {int /*<<< orphan*/  kref; TYPE_2__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  drbd_destroy_connection ; 
 struct drbd_connection* FUNC0 (struct drbd_resource*) ; 
 unsigned long jiffies ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,struct drbd_resource*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,struct drbd_resource*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,struct drbd_resource*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,struct drbd_resource*,struct drbd_connection*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,struct drbd_resource*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct seq_file*,char*) ; 
 struct tcp_sock* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct seq_file *m, void *pos)
{
	struct drbd_resource *resource = m->private;
	struct drbd_connection *connection;
	unsigned long jif = jiffies;

	connection = FUNC0(resource);
	/* This does not happen, actually.
	 * But be robust and prepare for future code changes. */
	if (!connection || !FUNC2(&connection->kref))
		return -ESTALE;

	/* BUMP me if you change the file format/content/presentation */
	FUNC11(m, "v: %u\n\n", 0);

	FUNC13(m, "oldest bitmap IO\n");
	FUNC6(m, resource, jif);
	FUNC12(m, '\n');

	FUNC13(m, "meta data IO\n");
	FUNC7(m, resource, jif);
	FUNC12(m, '\n');

	FUNC13(m, "socket buffer stats\n");
	/* for each connection ... once we have more than one */
	FUNC4();
	if (connection->data.socket) {
		/* open coded SIOCINQ, the "relevant" part */
		struct tcp_sock *tp = FUNC14(connection->data.socket->sk);
		int answ = tp->rcv_nxt - tp->copied_seq;
		FUNC11(m, "unread receive buffer: %u Byte\n", answ);
		/* open coded SIOCOUTQ, the "relevant" part */
		answ = tp->write_seq - tp->snd_una;
		FUNC11(m, "unacked send buffer: %u Byte\n", answ);
	}
	FUNC5();
	FUNC12(m, '\n');

	FUNC13(m, "oldest peer requests\n");
	FUNC8(m, resource, jif);
	FUNC12(m, '\n');

	FUNC13(m, "application requests waiting for activity log\n");
	FUNC10(m, resource, jif);
	FUNC12(m, '\n');

	FUNC13(m, "oldest application requests\n");
	FUNC9(m, resource, connection, jif);
	FUNC12(m, '\n');

	jif = jiffies - jif;
	if (jif)
		FUNC11(m, "generated in %d ms\n", FUNC1(jif));
	FUNC3(&connection->kref, drbd_destroy_connection);
	return 0;
}