
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int object_id_t ;
typedef int file_revlist_entry_t ;


 int REVLIST_OBJECT_ID (int *,long) ;
 scalar_t__ object_id_less (int ,int ) ;

__attribute__((used)) static long revlist_lookup_left (object_id_t x, file_revlist_entry_t *RData, int size) {
  long l = -1, r = size, h;
  while (r - l > 1) {
    h = (r + l) >> 1;
    if (object_id_less (REVLIST_OBJECT_ID(RData,h), x)) {
      l = h;
    } else {
      r = h;
    }
  }
  return r;
}
