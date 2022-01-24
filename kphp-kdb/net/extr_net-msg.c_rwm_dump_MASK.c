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
struct raw_message {scalar_t__ magic; int total_bytes; } ;

/* Variables and functions */
 scalar_t__ RM_INIT_MAGIC ; 
 scalar_t__ RM_TMP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct raw_message*,struct raw_message*) ; 
 int FUNC4 (struct raw_message*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct raw_message*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6 (struct raw_message *raw) {
  FUNC0 (raw->magic == RM_INIT_MAGIC || raw->magic == RM_TMP_MAGIC);
  struct raw_message t;
  FUNC3 (&t, raw);
  static char R[10004];
  int r = FUNC4 (&t, R, 10004);
  int x = (r > 10000) ? 10000 : r;
  FUNC2 (R, R + x);
  if (r > x) {
    FUNC1 (stderr, "%d bytes not printed\n", raw->total_bytes - x);
  }
  FUNC5 (&t);
  return 0;
}