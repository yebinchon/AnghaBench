#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cache_uri {char* local_copy; } ;
struct cache_local_copy {int flags; int cached_at; int* cached_counter_value; int yellow_light_start; int packed_location; int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int CACHE_LOCAL_COPY_FLAG_INT ; 
 int CACHE_LOCAL_COPY_FLAG_LAST ; 
 int CACHE_LOCAL_COPY_FLAG_MONTHLY_COUNTER ; 
 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ; 
 int amortization_counter_types ; 
 int /*<<< orphan*/  FUNC0 (struct cache_uri*,struct cache_local_copy*) ; 
 int /*<<< orphan*/  FUNC1 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

int FUNC4 (struct cache_uri *U, struct cache_local_copy *L, int olen, int unpack_location, int *local_copy_len) {
  int r = 0;
  if (U->local_copy == NULL) {
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
    FUNC1 (&L->flags, s, 4);
    s += 4;
    FUNC1 (&L->cached_at, s, 4);
    s += 4;

#ifdef CACHE_FEATURE_MONTHLY_COUNTER_PERF_STATS
    if (L->flags & CACHE_LOCAL_COPY_FLAG_MONTHLY_COUNTER) {
      memcpy (L->cached_counter_value, s, 4 * amortization_counter_types);
      s += 4 * amortization_counter_types;
    }
#endif

    if (L->flags & CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK) {
      FUNC1 (&L->yellow_light_start, s, 4);
      s += 4;
    }
    if (L->flags & CACHE_LOCAL_COPY_FLAG_INT) {
      FUNC1 (&L->packed_location, s, 4);
      s += 4;
      if (unpack_location) {
        FUNC0 (U, L);
      }
    } else {
      L->packed_location = 0;
      FUNC2 (L->location, s);
      s += FUNC3 (s) + 1;
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