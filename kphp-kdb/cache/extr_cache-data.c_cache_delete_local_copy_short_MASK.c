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
struct lev_cache_set_new_local_copy_short {int /*<<< orphan*/  packed_location; scalar_t__ data; } ;
struct cache_uri {int dummy; } ;
struct cache_local_copy {int /*<<< orphan*/  packed_location; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  md5_t ;
typedef  int /*<<< orphan*/  L ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_LOCAL_COPY_FLAG_INT ; 
 int /*<<< orphan*/  FUNC0 (struct cache_uri*) ; 
 int FUNC1 (struct cache_uri*,struct cache_local_copy*) ; 
 struct cache_uri* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_local_copy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4 (struct lev_cache_set_new_local_copy_short *E) {
  struct cache_uri *U = FUNC2 ((md5_t *) E->data, 8);
  FUNC0 (U);
  struct cache_local_copy L;
  FUNC3 (&L, 0, sizeof (L));
  L.flags |= CACHE_LOCAL_COPY_FLAG_INT;
  L.packed_location = E->packed_location;
  return FUNC1 (U, &L);
}