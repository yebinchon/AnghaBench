
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cache_local_copy {int flags; int * location; int packed_location; } ;
struct TYPE_3__ {int prefix_len; int * packed_prefix; int packed_location_len; int packed_location; } ;
typedef TYPE_1__ cache_disk_filter_t ;


 int CACHE_LOCAL_COPY_FLAG_INT ;
 int memcmp (int *,int *,int ) ;

__attribute__((used)) static int cache_uri_local_copy_disk_filter_match (struct cache_local_copy *L, cache_disk_filter_t *F) {
  if (L->flags & CACHE_LOCAL_COPY_FLAG_INT) {
    if (!memcmp (&L->packed_location, &F->packed_location, F->packed_location_len)) {
      return 1;
    }
  } else {
    if (!memcmp (L->location, F->packed_prefix, F->prefix_len)) {
      return 1;
    }
  }
  return 0;
}
