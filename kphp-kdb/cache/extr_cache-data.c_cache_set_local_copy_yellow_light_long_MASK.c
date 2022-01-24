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
struct lev_cache_set_local_copy_yellow_light_long {int /*<<< orphan*/  yellow_light_duration; int /*<<< orphan*/  data; scalar_t__ md5; } ;
struct cache_uri {int dummy; } ;
struct cache_local_copy {scalar_t__* location; } ;
typedef  int /*<<< orphan*/  md5_t ;
typedef  int /*<<< orphan*/  L ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cache_uri* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct cache_uri*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_local_copy*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5 (struct lev_cache_set_local_copy_yellow_light_long *E, int local_url_len) {
  struct cache_uri *U = FUNC1 ((md5_t *) E->md5, 16);
  FUNC0 (U);
  struct cache_local_copy L;
  FUNC4 (&L, 0, sizeof (L));
  FUNC0 (local_url_len < sizeof (L.location));
  FUNC3 (L.location, E->data, local_url_len);
  L.location[local_url_len] = 0;
  //cache_local_copy_try_pack_location (U, &L);
  return FUNC2 (U, L.location, E->yellow_light_duration);
}