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
struct lev_cache_set_size_long {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct cache_uri {int dummy; } ;
typedef  int /*<<< orphan*/  md5_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_uri*) ; 
 struct cache_uri* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct cache_uri* FUNC2 (struct cache_uri*,int /*<<< orphan*/ ) ; 

void FUNC3 (struct lev_cache_set_size_long *E) {
  struct cache_uri *U = FUNC1 ((md5_t *) E->data, 16);
  FUNC0 (U);
  U = FUNC2 (U, E->size);
}