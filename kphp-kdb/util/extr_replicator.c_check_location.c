
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_binlog {char* binlog_tag; struct location_list_entry* first; } ;
struct location_list_entry {int flags; char* location; struct location_list_entry* next; } ;


 int assert (struct remote_binlog*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

int check_location (struct remote_binlog *B) {
  assert (B);

  int l_cnt = 0, m_cnt = 0;
  struct location_list_entry *Q;
  for (Q = B->first; Q; Q = Q->next) {
    if (Q->flags & 2) {
      l_cnt++;
    }
    if (Q->flags & 1) {
      m_cnt++;
    }
  }

  if (l_cnt > 1) {
    fprintf (stderr, "error: binlog %s has %d local locations:", B->binlog_tag, l_cnt);
    for (Q = B->first; Q; Q = Q->next) {
      if (Q->flags & 2) {
        fprintf (stderr, " %s", Q->location);
      }
    }
    fprintf (stderr, "\n");
    return 1;
  }

  if (!m_cnt) {
    fprintf (stderr, "error: binlog %s has no master location\n", B->binlog_tag);
    return 1;
  }

  if (m_cnt > 1) {
    fprintf (stderr, "error: binlog %s has %d master locations:", B->binlog_tag, m_cnt);
    for (Q = B->first; Q; Q = Q->next) {
      if (Q->flags & 1) {
        fprintf (stderr, " %s", Q->location);
      }
    }
    fprintf (stderr, "\n");
    return 1;
  }

  return 0;
}
