
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_local_copy {int flags; int packed_location; int cached_at; int cached_counter_value; int yellow_light_start; int* location; } ;


 int CACHE_LOCAL_COPY_FLAG_INT ;
 int CACHE_LOCAL_COPY_FLAG_LAST ;
 int CACHE_LOCAL_COPY_FLAG_MONTHLY_COUNTER ;
 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ;
 int amortization_counter_types ;
 int memcpy (char*,int*,int) ;
 int strlen (int*) ;

int cache_local_copy_pack (struct cache_local_copy *L, int ilen, char *output, int olen) {
  int i, o = 0;
  if (ilen <= 0) {
    return 0;
  }
  for (i = ilen - 2; i >= 0; i--) {
    L[i].flags &= ~CACHE_LOCAL_COPY_FLAG_LAST;
  }
  L[ilen-1].flags |= CACHE_LOCAL_COPY_FLAG_LAST;
  for (i = 0; i < ilen; i++) {
    L[i].flags &= ~CACHE_LOCAL_COPY_FLAG_INT;
    if (L[i].packed_location) {
      L[i].flags |= CACHE_LOCAL_COPY_FLAG_INT;
    }

    if (o + 4 > olen) {
      return -1;
    }
    memcpy (output + o, &L[i].flags, 4);
    o += 4;
    if (o + 4 > olen) {
      return -1;
    }
    memcpy (output + o, &L[i].cached_at, 4);
    o += 4;
    if (L[i].flags & CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK) {
      if (o + 4 > olen) {
        return -1;
      }
      memcpy (output + o, &L[i].yellow_light_start, 4);
      o += 4;
    }
    if (L[i].flags & CACHE_LOCAL_COPY_FLAG_INT) {
      if (o + 4 > olen) {
        return -1;
      }
      memcpy (output + o, &L[i].packed_location, 4);
      o += 4;
    } else {
      int l = strlen (L[i].location) + 1;
      if (o + l > olen) {
        return -1;
      }
      memcpy (output + o, L[i].location, l);
      o += l;
    }
  }
  return o;
}
