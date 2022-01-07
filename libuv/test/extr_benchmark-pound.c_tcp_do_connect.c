
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int make_connect_fn ;
typedef int conn_rec ;
struct TYPE_2__ {int make_connect; } ;


 TYPE_1__* tcp_conns ;
 int tcp_make_connect (int *) ;

__attribute__((used)) static int tcp_do_connect(int num, make_connect_fn make_connect, void* arg) {
  int i;

  for (i = 0; i < num; i++) {
    tcp_make_connect((conn_rec*)&tcp_conns[i]);
    tcp_conns[i].make_connect = make_connect;
  }

  return 0;
}
