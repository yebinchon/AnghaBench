
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_server_status {int session_id; struct repl_server_status* h_next; } ;


 int PARTNER_HASH_SIZE ;
 struct repl_server_status** ServerHash ;
 int active_repl_servers ;
 int assert (int) ;
 int zfree (struct repl_server_status*,int) ;
 struct repl_server_status* zmalloc0 (int) ;

struct repl_server_status *get_server_by_session (int session_id, int force) {
  int h = session_id % PARTNER_HASH_SIZE;
  if (h < 0) {
    h += PARTNER_HASH_SIZE;
  }
  struct repl_server_status **p = &ServerHash[h], *q = *p;
  while (q) {
    if (q->session_id == session_id) {
      if (force < 0) {
        *p = q->h_next;
        q->h_next = 0;
        zfree (q, sizeof (struct repl_server_status));
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
  q = zmalloc0 (sizeof (struct repl_server_status));
  q->h_next = ServerHash[h];
  q->session_id = session_id;
  ServerHash[h] = q;
  active_repl_servers++;
  return q;
}
