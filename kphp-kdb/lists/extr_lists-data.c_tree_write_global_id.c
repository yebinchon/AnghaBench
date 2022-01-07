
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_ext_small_t ;
typedef int global_id_t ;
struct TYPE_2__ {int global_id; } ;


 TYPE_1__* LPAYLOAD (int *) ;
 int assert (int ) ;
 int writeout_int (int ) ;
 int writeout_long (int ) ;

__attribute__((used)) static int tree_write_global_id (tree_ext_small_t *T) {
  if (sizeof (global_id_t) == sizeof (int)) {
    writeout_int (LPAYLOAD(T)->global_id);
  } else if (sizeof (global_id_t) == sizeof (long long)) {
    writeout_long (LPAYLOAD(T)->global_id);
  } else {
    assert (0);
  }
  return 0;
}
