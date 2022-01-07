
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct postponed_operation {int size; struct postponed_operation* next; struct postponed_operation* prev; int E; int time; } ;
struct lev_generic {int type; } ;
struct TYPE_2__ {int tot_lists; } ;


 TYPE_1__ Header ;
 int assert (int) ;
 int memcpy (int ,struct lev_generic*,int) ;
 int now ;
 struct postponed_operation** postponed ;
 int postponed_operations_size ;
 int postponed_operations_total ;
 scalar_t__ postponed_replay ;
 int vkprintf (int,char*,int,int ,int) ;
 struct postponed_operation* zmalloc (int) ;

void insert_postponed (int x, struct lev_generic *E, int size) {
  assert (0 <= x && x < Header.tot_lists);
  if (postponed_replay) {
    return;
  }
  vkprintf (4, "Insert postponed: metafile_number = %d, lev_type = %d, size = %d\n", x, E->type, size);
  postponed_operations_total ++;
  struct postponed_operation *F = zmalloc (size + sizeof (struct postponed_operation));
  postponed_operations_size += size + sizeof (struct postponed_operation);
  F->size = size;
  F->next = 0;
  F->prev = 0;
  F->time = now;
  memcpy (F->E, E, size);
  if (!postponed[x]) {
    postponed[x] = F;
    F->next = F;
    F->prev = F;
  } else {
    struct postponed_operation *G = postponed[x];
    F->prev = G->prev;
    F->next = G;
    G->prev = F;
    F->prev->next = F;
  }
}
