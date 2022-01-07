
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gather_data {int magic; int tot_num; scalar_t__ size; scalar_t__ new_key_len; struct gather_data* new_key; scalar_t__ orig_key_len; struct gather_data* orig_key; TYPE_1__* List; scalar_t__ extra; } ;
struct TYPE_2__ {scalar_t__ res_bytes; struct gather_data* data; } ;


 int GD_MAGIC ;
 int GD_MAGIC_MASK ;
 scalar_t__ active_gathers ;
 int assert (int) ;
 int fprintf (int ,char*,struct gather_data*) ;
 int free_gather_extra (scalar_t__) ;
 int stderr ;
 int verbosity ;
 int zzfree (struct gather_data*,scalar_t__) ;

__attribute__((used)) static void free_gather (struct gather_data *G) {
  if (!G) {
    return;
  }
  assert ((G->magic & GD_MAGIC_MASK) == GD_MAGIC);
  if (G->extra) {
    free_gather_extra (G->extra);
  }

  G->magic = 0;
  assert (active_gathers > 0);
  if (verbosity >= 2) {
    fprintf (stderr, "Gather structure %p freed.\n", G);
  }

  int i;
  for (i = 0; i < G->tot_num; i++) {
    if (G->List[i].res_bytes) {
      zzfree (G->List[i].data, G->List[i].res_bytes + 4);
    }
  }
  zzfree (G->orig_key, G->orig_key_len + 1);
  zzfree (G->new_key, G->new_key_len + 1);
  zzfree (G, G->size);
  active_gathers--;
}
