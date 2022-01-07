
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_execute () ;
 int custom_op_execute (int) ;
 int server_execute () ;

void common_execute (int op) {
  switch (op) {
  case 129:
  case 130:
    client_execute ();
    return;
  case 132:
  case 133:
    server_execute ();
    return;
  case 128:
  case 131:
    return;
  default:
    custom_op_execute (op);
    return;
  }
}
