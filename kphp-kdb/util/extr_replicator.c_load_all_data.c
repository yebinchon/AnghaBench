
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_server_status {int flags; struct repl_server_status* server_next; } ;
struct related_binlog {int flags; struct repl_server_status* server_first; } ;


 struct related_binlog* LR ;
 int LRF_BROKEN ;
 int LRF_MASTER ;
 int RS_LOADDISK ;
 int load_data (struct repl_server_status*) ;
 int local_rbs ;

int load_all_data (void) {
  int i;
  for (i = 0; i < local_rbs; i++) {
    struct related_binlog *R = &LR[i];
    if ((R->flags & (LRF_MASTER | LRF_BROKEN)) == LRF_MASTER) {
      struct repl_server_status *S;
      for (S = R->server_first; S != (struct repl_server_status *) R; S = S->server_next) {
        if (S->flags & RS_LOADDISK) {
          load_data (S);
        }
      }
    }
  }
  return 0;
}
