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
struct drbd_request {int rq_state; scalar_t__ epoch; scalar_t__ pre_send_jif; struct drbd_device* device; } ;
struct drbd_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ current_epoch_nr; int /*<<< orphan*/  last_sent_barrier_jif; } ;
struct drbd_connection {TYPE_1__ send; scalar_t__ last_reconnect_jif; } ;

/* Variables and functions */
 int RQ_NET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,char*,int /*<<< orphan*/ ,unsigned long,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct drbd_request *net_req,
		struct drbd_connection *connection,
		unsigned long now, unsigned long ent,
		unsigned int ko_count, unsigned int timeout)
{
	struct drbd_device *device = net_req->device;

	if (!FUNC2(now, net_req->pre_send_jif + ent))
		return false;

	if (FUNC3(now, connection->last_reconnect_jif, connection->last_reconnect_jif + ent))
		return false;

	if (net_req->rq_state & RQ_NET_PENDING) {
		FUNC0(device, "Remote failed to finish a request within %ums > ko-count (%u) * timeout (%u * 0.1s)\n",
			FUNC1(now - net_req->pre_send_jif), ko_count, timeout);
		return true;
	}

	/* We received an ACK already (or are using protocol A),
	 * but are waiting for the epoch closing barrier ack.
	 * Check if we sent the barrier already.  We should not blame the peer
	 * for being unresponsive, if we did not even ask it yet. */
	if (net_req->epoch == connection->send.current_epoch_nr) {
		FUNC0(device,
			"We did not send a P_BARRIER for %ums > ko-count (%u) * timeout (%u * 0.1s); drbd kernel thread blocked?\n",
			FUNC1(now - net_req->pre_send_jif), ko_count, timeout);
		return false;
	}

	/* Worst case: we may have been blocked for whatever reason, then
	 * suddenly are able to send a lot of requests (and epoch separating
	 * barriers) in quick succession.
	 * The timestamp of the net_req may be much too old and not correspond
	 * to the sending time of the relevant unack'ed barrier packet, so
	 * would trigger a spurious timeout.  The latest barrier packet may
	 * have a too recent timestamp to trigger the timeout, potentially miss
	 * a timeout.  Right now we don't have a place to conveniently store
	 * these timestamps.
	 * But in this particular situation, the application requests are still
	 * completed to upper layers, DRBD should still "feel" responsive.
	 * No need yet to kill this connection, it may still recover.
	 * If not, eventually we will have queued enough into the network for
	 * us to block. From that point of view, the timestamp of the last sent
	 * barrier packet is relevant enough.
	 */
	if (FUNC2(now, connection->send.last_sent_barrier_jif + ent)) {
		FUNC0(device, "Remote failed to answer a P_BARRIER (sent at %lu jif; now=%lu jif) within %ums > ko-count (%u) * timeout (%u * 0.1s)\n",
			connection->send.last_sent_barrier_jif, now,
			FUNC1(now - connection->send.last_sent_barrier_jif), ko_count, timeout);
		return true;
	}
	return false;
}