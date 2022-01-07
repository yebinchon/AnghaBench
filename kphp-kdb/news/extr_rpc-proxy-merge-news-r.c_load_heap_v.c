
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int owner; int place; } ;
struct TYPE_5__ {int* cur; TYPE_1__ id; } ;
typedef TYPE_2__ gh_entry_t ;



__attribute__((used)) static inline void load_heap_v (gh_entry_t *H) {
  int *data = H->cur;
  H->id.type = data[0];
  H->id.owner = data[1];
  H->id.place = data[2];
}
