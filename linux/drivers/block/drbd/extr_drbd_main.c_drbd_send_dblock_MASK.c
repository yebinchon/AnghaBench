#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct p_wsame {void* size; } ;
struct p_trim {void* size; } ;
struct p_data {unsigned long block_id; void* dp_flags; void* seq_num; int /*<<< orphan*/  sector; } ;
struct drbd_socket {int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {unsigned int size; scalar_t__ sector; } ;
struct drbd_request {int rq_state; TYPE_2__ i; int /*<<< orphan*/  master_bio; } ;
struct drbd_peer_device {TYPE_4__* connection; struct drbd_device* device; } ;
struct TYPE_6__ {scalar_t__ conn; } ;
struct drbd_device {int /*<<< orphan*/  vnr; TYPE_1__ state; int /*<<< orphan*/  packet_seq; } ;
typedef  enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;
struct TYPE_9__ {int agreed_pro_version; scalar_t__ integrity_tfm; struct drbd_socket data; } ;
struct TYPE_8__ {unsigned int bv_len; } ;

/* Variables and functions */
 scalar_t__ C_PAUSED_SYNC_T ; 
 scalar_t__ C_SYNC_SOURCE ; 
 unsigned int DP_DISCARD ; 
 unsigned int DP_MAY_SET_IN_SYNC ; 
 unsigned int DP_SEND_RECEIVE_ACK ; 
 unsigned int DP_SEND_WRITE_ACK ; 
 unsigned int DP_WSAME ; 
 unsigned int DP_ZEROES ; 
 int EIO ; 
 int P_DATA ; 
 int P_TRIM ; 
 int P_WSAME ; 
 int P_ZEROES ; 
 int RQ_EXP_RECEIVE_ACK ; 
 int RQ_EXP_WRITE_ACK ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,struct drbd_socket*,int,int,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (struct drbd_peer_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drbd_peer_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,unsigned char*) ; 
 struct p_data* FUNC10 (struct drbd_peer_device*,struct drbd_socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct drbd_device*,char*,unsigned long long,unsigned int) ; 
 scalar_t__ FUNC12 (struct p_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct drbd_peer_device *peer_device, struct drbd_request *req)
{
	struct drbd_device *device = peer_device->device;
	struct drbd_socket *sock;
	struct p_data *p;
	struct p_wsame *wsame = NULL;
	void *digest_out;
	unsigned int dp_flags = 0;
	int digest_size;
	int err;

	sock = &peer_device->connection->data;
	p = FUNC10(peer_device, sock);
	digest_size = peer_device->connection->integrity_tfm ?
		      FUNC8(peer_device->connection->integrity_tfm) : 0;

	if (!p)
		return -EIO;
	p->sector = FUNC7(req->i.sector);
	p->block_id = (unsigned long)req;
	p->seq_num = FUNC6(FUNC3(&device->packet_seq));
	dp_flags = FUNC4(peer_device->connection, req->master_bio);
	if (device->state.conn >= C_SYNC_SOURCE &&
	    device->state.conn <= C_PAUSED_SYNC_T)
		dp_flags |= DP_MAY_SET_IN_SYNC;
	if (peer_device->connection->agreed_pro_version >= 100) {
		if (req->rq_state & RQ_EXP_RECEIVE_ACK)
			dp_flags |= DP_SEND_RECEIVE_ACK;
		/* During resync, request an explicit write ack,
		 * even in protocol != C */
		if (req->rq_state & RQ_EXP_WRITE_ACK
		|| (dp_flags & DP_MAY_SET_IN_SYNC))
			dp_flags |= DP_SEND_WRITE_ACK;
	}
	p->dp_flags = FUNC6(dp_flags);

	if (dp_flags & (DP_DISCARD|DP_ZEROES)) {
		enum drbd_packet cmd = (dp_flags & DP_ZEROES) ? P_ZEROES : P_TRIM;
		struct p_trim *t = (struct p_trim*)p;
		t->size = FUNC6(req->i.size);
		err = FUNC0(peer_device->connection, device->vnr, sock, cmd, sizeof(*t), NULL, 0);
		goto out;
	}
	if (dp_flags & DP_WSAME) {
		/* this will only work if DRBD_FF_WSAME is set AND the
		 * handshake agreed that all nodes and backend devices are
		 * WRITE_SAME capable and agree on logical_block_size */
		wsame = (struct p_wsame*)p;
		digest_out = wsame + 1;
		wsame->size = FUNC6(req->i.size);
	} else
		digest_out = p + 1;

	/* our digest is still only over the payload.
	 * TRIM does not carry any payload. */
	if (digest_size)
		FUNC9(peer_device->connection->integrity_tfm, req->master_bio, digest_out);
	if (wsame) {
		err =
		    FUNC0(peer_device->connection, device->vnr, sock, P_WSAME,
				   sizeof(*wsame) + digest_size, NULL,
				   FUNC5(req->master_bio).bv_len);
	} else
		err =
		    FUNC0(peer_device->connection, device->vnr, sock, P_DATA,
				   sizeof(*p) + digest_size, NULL, req->i.size);
	if (!err) {
		/* For protocol A, we have to memcpy the payload into
		 * socket buffers, as we may complete right away
		 * as soon as we handed it over to tcp, at which point the data
		 * pages may become invalid.
		 *
		 * For data-integrity enabled, we copy it as well, so we can be
		 * sure that even if the bio pages may still be modified, it
		 * won't change the data on the wire, thus if the digest checks
		 * out ok after sending on this side, but does not fit on the
		 * receiving side, we sure have detected corruption elsewhere.
		 */
		if (!(req->rq_state & (RQ_EXP_RECEIVE_ACK | RQ_EXP_WRITE_ACK)) || digest_size)
			err = FUNC1(peer_device, req->master_bio);
		else
			err = FUNC2(peer_device, req->master_bio);

		/* double check digest, sometimes buffers have been modified in flight. */
		if (digest_size > 0 && digest_size <= 64) {
			/* 64 byte, 512 bit, is the largest digest size
			 * currently supported in kernel crypto. */
			unsigned char digest[64];
			FUNC9(peer_device->connection->integrity_tfm, req->master_bio, digest);
			if (FUNC12(p + 1, digest, digest_size)) {
				FUNC11(device,
					"Digest mismatch, buffer modified by upper layers during write: %llus +%u\n",
					(unsigned long long)req->i.sector, req->i.size);
			}
		} /* else if (digest_size > 64) {
		     ... Be noisy about digest too large ...
		} */
	}
out:
	FUNC13(&sock->mutex);  /* locked by drbd_prepare_command() */

	return err;
}