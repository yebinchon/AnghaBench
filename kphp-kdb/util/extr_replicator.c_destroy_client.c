
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repl_client_status {int handshake_id; TYPE_1__* rb; } ;
struct TYPE_2__ {int targets; struct repl_client_status** client; } ;


 scalar_t__ active_repl_clients ;
 int assert (int) ;
 int get_client_by_handshake (int ,int) ;
 int vkprintf (int,char*,int ) ;

int destroy_client (struct repl_client_status *C) {
  int j;
  vkprintf (1, "destroyed client %d\n", C->handshake_id);
  for (j = 0; j < C->rb->targets; j++) {
    if (C->rb->client[j] == C) {
      C->rb->client[j] = 0;
    }
  }
  get_client_by_handshake (C->handshake_id, -1);
  assert (--active_repl_clients >= 0);
  return 0;
}
