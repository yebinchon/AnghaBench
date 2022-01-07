
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_info {int vnr; struct p_req_state_reply* data; } ;
struct p_req_state_reply {int retcode; } ;
struct drbd_peer_device {struct drbd_device* device; } ;
struct drbd_device {int state_wait; int flags; } ;
struct drbd_connection {int agreed_pro_version; int flags; } ;


 int CL_ST_CHG_FAIL ;
 int CL_ST_CHG_SUCCESS ;
 int CONN_WD_ST_CHG_REQ ;
 int D_ASSERT (struct drbd_device*,int) ;
 int EIO ;
 int SS_SUCCESS ;
 int be32_to_cpu (int ) ;
 struct drbd_peer_device* conn_peer_device (struct drbd_connection*,int ) ;
 int drbd_err (struct drbd_device*,char*,int ,int) ;
 int drbd_set_st_err_str (int) ;
 int got_conn_RqSReply (struct drbd_connection*,struct packet_info*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int got_RqSReply(struct drbd_connection *connection, struct packet_info *pi)
{
 struct drbd_peer_device *peer_device;
 struct drbd_device *device;
 struct p_req_state_reply *p = pi->data;
 int retcode = be32_to_cpu(p->retcode);

 peer_device = conn_peer_device(connection, pi->vnr);
 if (!peer_device)
  return -EIO;
 device = peer_device->device;

 if (test_bit(CONN_WD_ST_CHG_REQ, &connection->flags)) {
  D_ASSERT(device, connection->agreed_pro_version < 100);
  return got_conn_RqSReply(connection, pi);
 }

 if (retcode >= SS_SUCCESS) {
  set_bit(CL_ST_CHG_SUCCESS, &device->flags);
 } else {
  set_bit(CL_ST_CHG_FAIL, &device->flags);
  drbd_err(device, "Requested state change failed by peer: %s (%d)\n",
   drbd_set_st_err_str(retcode), retcode);
 }
 wake_up(&device->state_wait);

 return 0;
}
