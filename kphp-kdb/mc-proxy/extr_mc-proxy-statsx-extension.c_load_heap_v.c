
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cur; int value64; } ;
typedef TYPE_1__ gh_entry_t ;



__attribute__((used)) static inline void load_heap_v (gh_entry_t *H) {
  int *data = H->cur;
  H->value64 = -*data;
}
