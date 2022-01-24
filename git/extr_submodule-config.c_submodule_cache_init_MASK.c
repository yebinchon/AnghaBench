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
struct submodule_cache {int initialized; int /*<<< orphan*/  for_name; int /*<<< orphan*/  for_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  config_name_cmp ; 
 int /*<<< orphan*/  config_path_cmp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct submodule_cache *cache)
{
	FUNC0(&cache->for_path, config_path_cmp, NULL, 0);
	FUNC0(&cache->for_name, config_name_cmp, NULL, 0);
	cache->initialized = 1;
}