
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t next; } ;


 TYPE_1__* large_metafiles ;
 size_t large_users_number ;
 int unload_metafile (size_t) ;

int free_by_LRU (void) {
  if (large_metafiles[large_users_number].next == large_users_number) {
    return 0;
  }
  return unload_metafile (large_metafiles[large_users_number].next);
}
