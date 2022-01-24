#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct res_opts {int dummy; } ;
struct drbd_resource {int /*<<< orphan*/  resources; int /*<<< orphan*/  connections; int /*<<< orphan*/  kref; } ;
struct drbd_epoch {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {struct drbd_connection* connection; } ;
struct TYPE_5__ {int seen_any_write_yet; scalar_t__ current_epoch_writes; scalar_t__ current_epoch_nr; } ;
struct drbd_connection {int epochs; TYPE_3__ data; TYPE_3__ meta; struct drbd_connection* current_epoch; int /*<<< orphan*/  connections; struct drbd_resource* resource; int /*<<< orphan*/  kref; TYPE_2__ ack_receiver; TYPE_2__ worker; TYPE_2__ receiver; int /*<<< orphan*/  sender_work; int /*<<< orphan*/  peer_devices; int /*<<< orphan*/  ping_wait; int /*<<< orphan*/  cstate_mutex; int /*<<< orphan*/  cstate; TYPE_1__ send; int /*<<< orphan*/  epoch_lock; int /*<<< orphan*/  list; int /*<<< orphan*/  transfer_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_STANDALONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drbd_ack_receiver ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 struct drbd_resource* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_resource*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drbd_receiver ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_resource*,TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  drbd_worker ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct drbd_resource*,struct res_opts*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

struct drbd_connection *FUNC19(const char *name, struct res_opts *res_opts)
{
	struct drbd_resource *resource;
	struct drbd_connection *connection;

	connection = FUNC13(sizeof(struct drbd_connection), GFP_KERNEL);
	if (!connection)
		return NULL;

	if (FUNC1(&connection->data))
		goto fail;
	if (FUNC1(&connection->meta))
		goto fail;

	connection->current_epoch = FUNC13(sizeof(struct drbd_epoch), GFP_KERNEL);
	if (!connection->current_epoch)
		goto fail;

	FUNC0(&connection->transfer_log);

	FUNC0(&connection->current_epoch->list);
	connection->epochs = 1;
	FUNC18(&connection->epoch_lock);

	connection->send.seen_any_write_yet = false;
	connection->send.current_epoch_nr = 0;
	connection->send.current_epoch_writes = 0;

	resource = FUNC2(name);
	if (!resource)
		goto fail;

	connection->cstate = C_STANDALONE;
	FUNC16(&connection->cstate_mutex);
	FUNC9(&connection->ping_wait);
	FUNC8(&connection->peer_devices);

	FUNC6(&connection->sender_work);
	FUNC16(&connection->data.mutex);
	FUNC16(&connection->meta.mutex);

	FUNC7(resource, &connection->receiver, drbd_receiver, "receiver");
	connection->receiver.connection = connection;
	FUNC7(resource, &connection->worker, drbd_worker, "worker");
	connection->worker.connection = connection;
	FUNC7(resource, &connection->ack_receiver, drbd_ack_receiver, "ack_recv");
	connection->ack_receiver.connection = connection;

	FUNC12(&connection->kref);

	connection->resource = resource;

	if (FUNC17(resource, res_opts))
		goto fail_resource;

	FUNC11(&resource->kref);
	FUNC14(&connection->connections, &resource->connections);
	FUNC3(connection);
	return connection;

fail_resource:
	FUNC15(&resource->resources);
	FUNC4(resource);
fail:
	FUNC10(connection->current_epoch);
	FUNC5(&connection->meta);
	FUNC5(&connection->data);
	FUNC10(connection);
	return NULL;
}