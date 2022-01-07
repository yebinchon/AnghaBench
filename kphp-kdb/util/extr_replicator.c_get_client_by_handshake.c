
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_client_status {int handshake_id; struct repl_client_status* h_next; } ;


 struct repl_client_status** ClientHash ;
 int PARTNER_HASH_SIZE ;
 int active_repl_clients ;
 int assert (int) ;
 int zfree (struct repl_client_status*,int) ;
 struct repl_client_status* zmalloc0 (int) ;

struct repl_client_status *get_client_by_handshake (int handshake_id, int force) {
  int h = handshake_id % PARTNER_HASH_SIZE;
  if (h < 0) {
    h += PARTNER_HASH_SIZE;
  }
  struct repl_client_status **p = &ClientHash[h], *q = *p;
  while (q) {
    if (q->handshake_id == handshake_id) {
      if (force < 0) {
        *p = q->h_next;
        q->h_next = 0;
        zfree (q, sizeof (struct repl_client_status));
        return 0;
      }
      return q;
    }
    p = &q->h_next;
    q = *p;
  }
  assert (force >= 0);
  if (!force) {
    return 0;
  }
  q = zmalloc0 (sizeof (struct repl_client_status));
  q->h_next = ClientHash[h];
  q->handshake_id = handshake_id;
  ClientHash[h] = q;
  active_repl_clients++;
  return q;
}
