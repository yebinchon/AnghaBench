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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int FUNC1 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

int FUNC3 (struct connection *c, int key_count) {
  FUNC2 (1, "memcache_get_end: %d keys requested\n", key_count);
  FUNC0 (c);
  return FUNC1 (c, key_count);
}