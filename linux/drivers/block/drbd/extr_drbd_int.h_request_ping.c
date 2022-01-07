
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int flags; } ;


 int SEND_PING ;
 int set_bit (int ,int *) ;
 int wake_ack_receiver (struct drbd_connection*) ;

__attribute__((used)) static inline void request_ping(struct drbd_connection *connection)
{
 set_bit(SEND_PING, &connection->flags);
 wake_ack_receiver(connection);
}
