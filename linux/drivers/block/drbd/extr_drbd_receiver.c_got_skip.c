
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_info {int dummy; } ;
struct drbd_connection {int dummy; } ;



__attribute__((used)) static int got_skip(struct drbd_connection *connection, struct packet_info *pi)
{
 return 0;
}
