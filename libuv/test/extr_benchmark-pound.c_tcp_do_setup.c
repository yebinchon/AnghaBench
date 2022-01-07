
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;


 TYPE_1__* tcp_conns ;

__attribute__((used)) static void tcp_do_setup(int num, void* arg) {
  int i;

  for (i = 0; i < num; i++) {
    tcp_conns[i].i = i;
  }
}
