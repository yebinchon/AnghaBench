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
struct cache_local_copy {int flags; int /*<<< orphan*/  yellow_light_start; } ;

/* Variables and functions */
 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ; 
 int /*<<< orphan*/  log_last_ts ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 

__attribute__((used)) static void FUNC1 (struct cache_local_copy *L, int duration) {
  FUNC0 (4, "cache_local_copy_set_yellow_light (duration: %d)\n", duration);
  L->flags &= ~CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK;
  L->flags |= duration;
  L->yellow_light_start = log_last_ts;
}