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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ wildcard_ptr ; 
 int /*<<< orphan*/  wildcard_total_data_sent ; 
 int wildcard_total_keys_sent ; 

void FUNC2 (const char *key, int key_len) {
  *(int *)wildcard_ptr = wildcard_total_keys_sent;
  FUNC1 (key, key_len, wildcard_ptr, wildcard_total_data_sent);
  FUNC0 (wildcard_ptr, wildcard_total_data_sent);
}