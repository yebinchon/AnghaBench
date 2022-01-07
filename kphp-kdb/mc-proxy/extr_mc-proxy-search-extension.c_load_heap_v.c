
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cur; void* value64; } ;
typedef TYPE_1__ gh_entry_t ;


 int GH_mode ;
 scalar_t__ HINTS_MERGE_EXTENSION ;
 scalar_t__ SEARCHX_EXTENSION ;
 scalar_t__ SEARCH_EXTENSION ;
 scalar_t__ TARG_EXTENSION ;
 int assert (int ) ;
 int g_desc ;
 int g_double ;
 void* make_value64 (int,int) ;

__attribute__((used)) static inline void load_heap_v (gh_entry_t *H) {
  int *data = H->cur;
  int x, value;
  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    x = (data[1] ? data[1] : data[0]);
    value = (GH_mode & g_double ? data[2] : x);
  } else if (TARG_EXTENSION) {
    x = data[0];
    value = (GH_mode & g_double ? data[1] : x);
  } else if (HINTS_MERGE_EXTENSION) {
    x = data[0];
    value = -data[2];

  } else {
    assert (0);
  }
  if (GH_mode & g_desc) {

    H->value64 = make_value64 (-(value+1),-(x+1));
  } else {
    H->value64 = make_value64 (value, x);
  }
}
