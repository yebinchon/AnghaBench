
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int * A; } ;
typedef TYPE_1__ hash_list_t ;


 int writeout_int (int) ;
 int writeout_long (int ) ;

__attribute__((used)) static void writeout_hashlist (hash_list_t *H) {
  if (!H) {
    writeout_int (0);
    return;
  }
  writeout_int (H->len);
  int i;
  for (i = 0; i < H->len; i++) {
    writeout_long (H->A[i]);
  }
}
