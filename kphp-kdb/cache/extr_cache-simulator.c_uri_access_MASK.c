#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache_uri {scalar_t__ local_copy; int /*<<< orphan*/  last_access; } ;
struct TYPE_2__ {int cache_hits_files; int cache_hits_bytes; int cache_misses_files; int cache_misses_bytes; } ;

/* Variables and functions */
 long long FUNC0 (struct cache_uri*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_uri*,int) ; 
 int /*<<< orphan*/  now ; 
 TYPE_1__ simulation_stats ; 

__attribute__((used)) static void FUNC2 (struct cache_uri *U, int t) {
  if (U == NULL) {
    return;
  }
  U->last_access = now;
  FUNC1 (U, t);
  if (U->local_copy) {
    const long long s = FUNC0 (U, 1);
    simulation_stats.cache_hits_files += t;
    simulation_stats.cache_hits_bytes += t * s;
  } else {
    const long long s = FUNC0 (U, 0);
    simulation_stats.cache_misses_files += t;
    simulation_stats.cache_misses_bytes += t * s;
  }
}