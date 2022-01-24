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
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int next_ad_id ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC4 (struct connection *c) {
  static char buff[256];
  int len = FUNC2 (buff, "get ad_query%d\r\n", next_ad_id);
  FUNC3 (&c->Out, buff, len);
  FUNC0 (c);
  if (verbosity > 1) {
    FUNC1 (stderr, "Requested query for ad %d\n", next_ad_id);
  }
}