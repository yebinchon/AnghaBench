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
struct packet_info {struct p_barrier* data; } ;
struct p_barrier {int /*<<< orphan*/  barrier; } ;
struct drbd_epoch {int /*<<< orphan*/  list; int /*<<< orphan*/  epoch_size; int /*<<< orphan*/  active; scalar_t__ flags; struct drbd_connection* connection; int /*<<< orphan*/  barrier_nr; } ;
struct drbd_connection {int /*<<< orphan*/  epoch_lock; int /*<<< orphan*/  epochs; struct drbd_epoch* current_epoch; TYPE_1__* resource; } ;
struct TYPE_2__ {int write_ordering; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EV_GOT_BARRIER_NR ; 
 int FE_RECYCLED ; 
 int /*<<< orphan*/  GFP_NOIO ; 
#define  WO_BDEV_FLUSH 130 
#define  WO_DRAIN_IO 129 
#define  WO_NONE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_connection*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_connection*) ; 
 int FUNC5 (struct drbd_connection*,struct drbd_epoch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_connection*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_epoch*) ; 
 struct drbd_epoch* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct drbd_connection *connection, struct packet_info *pi)
{
	int rv;
	struct p_barrier *p = pi->data;
	struct drbd_epoch *epoch;

	/* FIXME these are unacked on connection,
	 * not a specific (peer)device.
	 */
	connection->current_epoch->barrier_nr = p->barrier;
	connection->current_epoch->connection = connection;
	rv = FUNC5(connection, connection->current_epoch, EV_GOT_BARRIER_NR);

	/* P_BARRIER_ACK may imply that the corresponding extent is dropped from
	 * the activity log, which means it would not be resynced in case the
	 * R_PRIMARY crashes now.
	 * Therefore we must send the barrier_ack after the barrier request was
	 * completed. */
	switch (connection->resource->write_ordering) {
	case WO_NONE:
		if (rv == FE_RECYCLED)
			return 0;

		/* receiver context, in the writeout path of the other node.
		 * avoid potential distributed deadlock */
		epoch = FUNC8(sizeof(struct drbd_epoch), GFP_NOIO);
		if (epoch)
			break;
		else
			FUNC6(connection, "Allocation of an epoch failed, slowing down\n");
			/* Fall through */

	case WO_BDEV_FLUSH:
	case WO_DRAIN_IO:
		FUNC2(connection);
		FUNC4(connection);

		if (FUNC0(&connection->current_epoch->epoch_size)) {
			epoch = FUNC8(sizeof(struct drbd_epoch), GFP_NOIO);
			if (epoch)
				break;
		}

		return 0;
	default:
		FUNC3(connection, "Strangeness in connection->write_ordering %d\n",
			 connection->resource->write_ordering);
		return -EIO;
	}

	epoch->flags = 0;
	FUNC1(&epoch->epoch_size, 0);
	FUNC1(&epoch->active, 0);

	FUNC10(&connection->epoch_lock);
	if (FUNC0(&connection->current_epoch->epoch_size)) {
		FUNC9(&epoch->list, &connection->current_epoch->list);
		connection->current_epoch = epoch;
		connection->epochs++;
	} else {
		/* The current_epoch got recycled while we allocated this one... */
		FUNC7(epoch);
	}
	FUNC11(&connection->epoch_lock);

	return 0;
}