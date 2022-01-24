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
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  del_pattern ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5 (struct connection *c, const char *key, int key_len) {
  INIT;

  // delete ("pattern{$id}");
  const int shift = 7; // shift == |pattern|
  if (key_len >= shift && !FUNC3 (key, "pattern", shift)) {
    int id = 0, already_read = 0;
    if (FUNC2 (key + shift, "%d%n", &id, &already_read) >= 1 && !key[shift + already_read]) {
      if (FUNC1 (id)) {
        FUNC4 (&c->Out, "DELETED\r\n", 9);
        FUNC0 (del_pattern, 0);
      }
    }
  }
  FUNC4 (&c->Out, "NOT_FOUND\r\n", 11);
  FUNC0 (del_pattern, 0);
}