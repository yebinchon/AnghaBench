
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; } ;
typedef TYPE_1__ tree_ext_large_t ;
struct tree_payload {int flags; int global_id; } ;


 struct tree_payload* PAYLOAD (TYPE_1__*) ;
 int change_entry_flags_common (int ,int ,int,int) ;

__attribute__((used)) static inline void change_entry_flags_memory (tree_ext_large_t *T, int new_flags) {
  struct tree_payload *P = PAYLOAD (T);
  change_entry_flags_common (T->x, P->global_id, P->flags, new_flags);
  P->flags = new_flags;
}
