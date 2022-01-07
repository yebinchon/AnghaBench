
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p_data {scalar_t__ dp_flags; scalar_t__ seq_num; int block_id; int sector; } ;
struct drbd_socket {int mutex; } ;
struct TYPE_3__ {int size; int sector; } ;
struct drbd_peer_request {TYPE_1__ i; int block_id; } ;
struct drbd_peer_device {TYPE_2__* connection; struct drbd_device* device; } ;
struct drbd_device {int vnr; } ;
typedef enum drbd_packet { ____Placeholder_drbd_packet } drbd_packet ;
struct TYPE_4__ {scalar_t__ integrity_tfm; struct drbd_socket data; } ;


 int EIO ;
 int __send_command (TYPE_2__*,int ,struct drbd_socket*,int,int,int *,int ) ;
 int _drbd_send_zc_ee (struct drbd_peer_device*,struct drbd_peer_request*) ;
 int cpu_to_be64 (int ) ;
 int crypto_shash_digestsize (scalar_t__) ;
 int drbd_csum_ee (scalar_t__,struct drbd_peer_request*,struct p_data*) ;
 struct p_data* drbd_prepare_command (struct drbd_peer_device*,struct drbd_socket*) ;
 int mutex_unlock (int *) ;

int drbd_send_block(struct drbd_peer_device *peer_device, enum drbd_packet cmd,
      struct drbd_peer_request *peer_req)
{
 struct drbd_device *device = peer_device->device;
 struct drbd_socket *sock;
 struct p_data *p;
 int err;
 int digest_size;

 sock = &peer_device->connection->data;
 p = drbd_prepare_command(peer_device, sock);

 digest_size = peer_device->connection->integrity_tfm ?
        crypto_shash_digestsize(peer_device->connection->integrity_tfm) : 0;

 if (!p)
  return -EIO;
 p->sector = cpu_to_be64(peer_req->i.sector);
 p->block_id = peer_req->block_id;
 p->seq_num = 0;
 p->dp_flags = 0;
 if (digest_size)
  drbd_csum_ee(peer_device->connection->integrity_tfm, peer_req, p + 1);
 err = __send_command(peer_device->connection, device->vnr, sock, cmd, sizeof(*p) + digest_size, ((void*)0), peer_req->i.size);
 if (!err)
  err = _drbd_send_zc_ee(peer_device, peer_req);
 mutex_unlock(&sock->mutex);

 return err;
}
