
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {char* local_copy; } ;
struct cache_local_copy {int flags; int cached_at; int* cached_counter_value; int yellow_light_start; int packed_location; int location; } ;


 int CACHE_LOCAL_COPY_FLAG_INT ;
 int CACHE_LOCAL_COPY_FLAG_LAST ;
 int CACHE_LOCAL_COPY_FLAG_MONTHLY_COUNTER ;
 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ;
 int amortization_counter_types ;
 int cache_local_copy_unpack_location (struct cache_uri*,struct cache_local_copy*) ;
 int memcpy (int*,char*,int) ;
 int strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

int cache_local_copy_unpack (struct cache_uri *U, struct cache_local_copy *L, int olen, int unpack_location, int *local_copy_len) {
  int r = 0;
  if (U->local_copy == ((void*)0)) {
    if (local_copy_len) {
      *local_copy_len = 0;
    }
    return 0;
  }
  char *s = U->local_copy;
  do {
    if (r >= olen) {
      return -1;
    }
    memcpy (&L->flags, s, 4);
    s += 4;
    memcpy (&L->cached_at, s, 4);
    s += 4;
    if (L->flags & CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK) {
      memcpy (&L->yellow_light_start, s, 4);
      s += 4;
    }
    if (L->flags & CACHE_LOCAL_COPY_FLAG_INT) {
      memcpy (&L->packed_location, s, 4);
      s += 4;
      if (unpack_location) {
        cache_local_copy_unpack_location (U, L);
      }
    } else {
      L->packed_location = 0;
      strcpy (L->location, s);
      s += strlen (s) + 1;
    }
    r++;
    if (L->flags & CACHE_LOCAL_COPY_FLAG_LAST) {
      break;
    }
    L++;
  } while (1);

  if (local_copy_len) {
    *local_copy_len = s - U->local_copy;
  }
  return r;
}
