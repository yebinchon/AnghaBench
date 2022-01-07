
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_connection {int dummy; } ;


 int set_rcvtimeo (struct drbd_connection*,int) ;

__attribute__((used)) static void set_ping_timeout(struct drbd_connection *connection)
{
 set_rcvtimeo(connection, 1);
}
