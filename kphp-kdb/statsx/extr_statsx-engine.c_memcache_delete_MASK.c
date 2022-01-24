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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (struct connection*) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5 (struct connection *c, const char *key, int key_len) {
  const int dog_len = FUNC1 (key, key_len);
  key += dog_len;
  key_len -= dog_len;
  int counter_id;
  if (FUNC3 (key, "counter%d", &counter_id) >= 1) {
    FUNC0 (counter_id, 0);
    FUNC4 (&c->Out, "DELETED\r\n", 9);
    return 0;
  }
  return FUNC2 (c);
}