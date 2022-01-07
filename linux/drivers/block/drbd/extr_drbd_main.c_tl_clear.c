
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int dummy; } ;


 int CONNECTION_LOST_WHILE_PENDING ;
 int tl_restart (struct drbd_connection*,int ) ;

void tl_clear(struct drbd_connection *connection)
{
 tl_restart(connection, CONNECTION_LOST_WHILE_PENDING);
}
