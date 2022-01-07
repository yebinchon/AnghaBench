
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_connection {int cstate; int receiver; TYPE_1__* resource; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;
struct TYPE_2__ {int req_lock; } ;


 int CS_HARD ;
 int CS_VERBOSE ;
 int C_DISCONNECTING ;
 int C_STANDALONE ;
 int C_WF_CONNECTION ;
 int D_OUTDATED ;
 int NS (int ,int ) ;
 int NS2 (int ,int ,int ,int ) ;


 int SS_IS_DISKLESS ;
 int SS_LOWER_THAN_OUTDATED ;

 int SS_OUTDATE_WO_CONN ;

 int SS_SUCCESS ;
 int conn ;
 int conn_request_state (struct drbd_connection*,int ,int) ;
 int disk ;
 int drbd_err (struct drbd_connection*,char*,int) ;
 int drbd_thread_stop (int *) ;
 int pdsk ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static enum drbd_state_rv conn_try_disconnect(struct drbd_connection *connection, bool force)
{
 enum drbd_conns cstate;
 enum drbd_state_rv rv;

repeat:
 rv = conn_request_state(connection, NS(conn, C_DISCONNECTING),
   force ? CS_HARD : 0);

 switch (rv) {
 case 129:
  break;
 case 131:
  return SS_SUCCESS;
 case 128:

  rv = conn_request_state(connection, NS2(conn, C_DISCONNECTING, pdsk, D_OUTDATED), 0);

  if (rv == SS_OUTDATE_WO_CONN)
   rv = conn_request_state(connection, NS(conn, C_DISCONNECTING), CS_VERBOSE);

  break;
 case 130:
  spin_lock_irq(&connection->resource->req_lock);
  cstate = connection->cstate;
  spin_unlock_irq(&connection->resource->req_lock);
  if (cstate <= C_WF_CONNECTION)
   goto repeat;

  rv = conn_request_state(connection, NS2(conn, C_DISCONNECTING,
       disk, D_OUTDATED), 0);
  if (rv == SS_IS_DISKLESS || rv == SS_LOWER_THAN_OUTDATED) {
   rv = conn_request_state(connection, NS(conn, C_DISCONNECTING),
     CS_HARD);
  }
  break;
 default:;

 }

 if (rv >= SS_SUCCESS) {
  enum drbd_state_rv rv2;




  drbd_thread_stop(&connection->receiver);







  rv2 = conn_request_state(connection, NS(conn, C_STANDALONE),
    CS_VERBOSE | CS_HARD);
  if (rv2 < SS_SUCCESS)
   drbd_err(connection,
    "unexpected rv2=%d in conn_try_disconnect()\n",
    rv2);


 }
 return rv;
}
