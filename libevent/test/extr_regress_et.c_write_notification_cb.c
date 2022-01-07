
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 short EV_ET ;
 short last_write_notification_was_et ;
 int write_notification_count ;

__attribute__((used)) static void
write_notification_cb(evutil_socket_t fd, short event, void *arg)
{
 write_notification_count++;
 last_write_notification_was_et = (event & EV_ET);
}
