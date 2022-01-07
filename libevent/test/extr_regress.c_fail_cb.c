
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 scalar_t__ test_ok ;

__attribute__((used)) static void
fail_cb(evutil_socket_t fd, short events, void *arg)
{
 test_ok = 0;
}
