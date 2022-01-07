
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_binlog {struct location_list_entry* first; } ;
struct location_list_entry {int flags; struct location_list_entry* next; } ;


 int assert (struct remote_binlog*) ;

struct location_list_entry *get_master (struct remote_binlog *B) {
  assert (B);

  struct location_list_entry *Q;
  for (Q = B->first; Q; Q = Q->next) {
    if (Q->flags & 1) {
      return Q;
    }
  }
  return 0;
}
