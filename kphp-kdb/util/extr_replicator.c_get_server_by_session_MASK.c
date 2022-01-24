#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct repl_server_status {int session_id; struct repl_server_status* h_next; } ;

/* Variables and functions */
 int PARTNER_HASH_SIZE ; 
 struct repl_server_status** ServerHash ; 
 int /*<<< orphan*/  active_repl_servers ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct repl_server_status*,int) ; 
 struct repl_server_status* FUNC2 (int) ; 

struct repl_server_status *FUNC3 (int session_id, int force) {
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
        FUNC1 (q, sizeof (struct repl_server_status));
        return 0;
      }
      return q;
    }
    p = &q->h_next;
    q = *p;
  }
  FUNC0 (force >= 0);
  if (!force) {
    return 0;
  }
  q = FUNC2 (sizeof (struct repl_server_status));
  q->h_next = ServerHash[h];
  q->session_id = session_id;
  ServerHash[h] = q;
  active_repl_servers++;
  return q;
}