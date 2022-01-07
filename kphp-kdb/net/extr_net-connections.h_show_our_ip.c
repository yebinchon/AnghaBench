
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int our_ipv6; int our_ip; } ;


 char* show_ip46 (int ,int ) ;

__attribute__((used)) static inline char *show_our_ip (struct connection *c) { return show_ip46 (c->our_ip, c->our_ipv6); }
