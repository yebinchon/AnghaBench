
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_thread {struct drbd_connection* connection; } ;
struct drbd_connection {int receiver_plug; } ;


 int CS_HARD ;
 int C_DISCONNECTING ;
 int HZ ;
 int NS (int ,int ) ;
 int blk_finish_plug (int *) ;
 int blk_start_plug (int *) ;
 int conn ;
 int conn_connect (struct drbd_connection*) ;
 int conn_disconnect (struct drbd_connection*) ;
 int conn_request_state (struct drbd_connection*,int ,int ) ;
 int drbd_info (struct drbd_connection*,char*) ;
 int drbd_warn (struct drbd_connection*,char*) ;
 int drbdd (struct drbd_connection*) ;
 int schedule_timeout_interruptible (int ) ;

int drbd_receiver(struct drbd_thread *thi)
{
 struct drbd_connection *connection = thi->connection;
 int h;

 drbd_info(connection, "receiver (re)started\n");

 do {
  h = conn_connect(connection);
  if (h == 0) {
   conn_disconnect(connection);
   schedule_timeout_interruptible(HZ);
  }
  if (h == -1) {
   drbd_warn(connection, "Discarding network configuration.\n");
   conn_request_state(connection, NS(conn, C_DISCONNECTING), CS_HARD);
  }
 } while (h == 0);

 if (h > 0) {
  blk_start_plug(&connection->receiver_plug);
  drbdd(connection);
  blk_finish_plug(&connection->receiver_plug);
 }

 conn_disconnect(connection);

 drbd_info(connection, "receiver terminated\n");
 return 0;
}
