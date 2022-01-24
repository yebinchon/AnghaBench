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
struct gather_entry {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct connection*,char const*,char*,int) ; 

int FUNC2 (struct connection *c, const char *key, int key_len, void *E, struct gather_entry *data, int tot_num) {
  FUNC0 (0);
  return FUNC1 (c, key, "ERROR: use default for merge_end_query", 38);
}