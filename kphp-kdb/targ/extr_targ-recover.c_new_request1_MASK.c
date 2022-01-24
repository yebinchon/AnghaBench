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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ max_ad_id ; 
 scalar_t__ next_ad_id ; 
 int FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC5 (struct connection *c) {
  if (next_ad_id > max_ad_id) {
    if (verbosity > 0) {
      FUNC2 (stderr, "%ld ads complete, exiting\n", max_ad_id);
    }
    FUNC0 (0);
  }
  static char buff[256];
  int len = FUNC3 (buff, "get ad_info%d\r\n", next_ad_id);
  FUNC4 (&c->Out, buff, len);
  FUNC1 (c);
  if (verbosity > 1) {
    FUNC2 (stderr, "Requested information about ad %ld\n", next_ad_id);
  }
}