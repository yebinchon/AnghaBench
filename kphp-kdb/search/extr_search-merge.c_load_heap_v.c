
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cur; int x; int value; } ;
typedef TYPE_1__ gh_entry_t ;


 int GH_mode ;
 int g_desc ;
 int g_double ;

__attribute__((used)) static inline void load_heap_v (gh_entry_t *H) {
  int *data = H->cur;
  int x = (data[1] ? data[1] : data[0]);
  int value = (GH_mode & g_double ? data[2] : x);
  if (GH_mode & g_desc) {
    H->x = -x;
    H->value = -value;
  } else {
    H->x = x;
    H->value = value;
  }
}
