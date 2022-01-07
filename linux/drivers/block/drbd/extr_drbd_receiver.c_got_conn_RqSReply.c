
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_info {struct p_req_state_reply* data; } ;
struct p_req_state_reply {int retcode; } ;
struct drbd_connection {int ping_wait; int flags; } ;


 int CONN_WD_ST_CHG_FAIL ;
 int CONN_WD_ST_CHG_OKAY ;
 int SS_SUCCESS ;
 int be32_to_cpu (int ) ;
 int drbd_err (struct drbd_connection*,char*,int ,int) ;
 int drbd_set_st_err_str (int) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int got_conn_RqSReply(struct drbd_connection *connection, struct packet_info *pi)
{
 struct p_req_state_reply *p = pi->data;
 int retcode = be32_to_cpu(p->retcode);

 if (retcode >= SS_SUCCESS) {
  set_bit(CONN_WD_ST_CHG_OKAY, &connection->flags);
 } else {
  set_bit(CONN_WD_ST_CHG_FAIL, &connection->flags);
  drbd_err(connection, "Requested state change failed by peer: %s (%d)\n",
    drbd_set_st_err_str(retcode), retcode);
 }
 wake_up(&connection->ping_wait);

 return 0;
}
