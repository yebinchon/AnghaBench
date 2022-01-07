
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unl {int sock; } ;


 int nl_socket_alloc () ;

__attribute__((used)) static int unl_init(struct unl *unl)
{
 unl->sock = nl_socket_alloc();
 if (!unl->sock)
  return -1;

 return 0;
}
