
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int our_ip; int remote_ip; } ;


 int rpcs_default_check_perm (struct connection*) ;

__attribute__((used)) static int rpcs_crypted_check_perm (struct connection *c) {
  if (c->our_ip == 0x7f000001 && c->remote_ip == 0x7f000001) {
    return 3;
  }
  return rpcs_default_check_perm(c) & -2;
}
