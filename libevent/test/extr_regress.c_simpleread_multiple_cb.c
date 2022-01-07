
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int called ;
 int test_ok ;

__attribute__((used)) static void
simpleread_multiple_cb(evutil_socket_t fd, short event, void *arg)
{
 if (++called == 2)
  test_ok = 1;
}
