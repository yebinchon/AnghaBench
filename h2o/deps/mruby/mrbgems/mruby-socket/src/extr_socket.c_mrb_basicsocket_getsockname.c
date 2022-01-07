
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 int mrb_str_new (int *,char*,int) ;
 int mrb_sys_fail (int *,char*) ;
 int socket_fd (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_basicsocket_getsockname(mrb_state *mrb, mrb_value self)
{
  struct sockaddr_storage ss;
  socklen_t salen;

  salen = sizeof(ss);
  if (getsockname(socket_fd(mrb, self), (struct sockaddr *)&ss, &salen) != 0)
    mrb_sys_fail(mrb, "getsockname");

  return mrb_str_new(mrb, (char*)&ss, salen);
}
