
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;



__attribute__((used)) static void
many_event_cb(evutil_socket_t fd, short event, void *arg)
{
 int *calledp = arg;
 *calledp += 1;
}
