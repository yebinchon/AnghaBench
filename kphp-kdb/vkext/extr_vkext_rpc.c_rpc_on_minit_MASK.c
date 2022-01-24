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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ PING_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ inbuf ; 
 long long last_qid ; 
 int last_queue_id ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  minit ; 
 scalar_t__ ping_timeout ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

void FUNC9 (int module_number) { /* {{{ */
  FUNC0 (minit);
  FUNC3 (minit);
  last_qid = FUNC7 () * (1ll << 32) + FUNC7 () + 1000000;;
  last_queue_id = (1 << 30) * 1ll + FUNC7 (); 
  if (FUNC2 ("tl.conffile")) {
    FUNC4 (FUNC8 (FUNC2 ("tl.conffile")) >= 0);
    if (inbuf) {
      inbuf = FUNC6 (inbuf);
    }
  }
  if (FUNC2 ("vkext.ping_timeout")) {
    ping_timeout = FUNC5 (FUNC2 ("vkext.ping_timeout"));
    if (ping_timeout <= 0) {
      ping_timeout = PING_TIMEOUT;
    }
  }
  FUNC1 (minit);
}