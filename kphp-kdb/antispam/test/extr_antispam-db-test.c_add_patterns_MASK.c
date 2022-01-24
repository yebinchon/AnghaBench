#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  uahash; int /*<<< orphan*/  flags; int /*<<< orphan*/  ip; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ antispam_pattern_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int N ; 
 int /*<<< orphan*/ * _flag ; 
 int /*<<< orphan*/ * _id ; 
 int /*<<< orphan*/ * _ip ; 
 int /*<<< orphan*/ * _uahash ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,double,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * str ; 

__attribute__((used)) static void FUNC5 (void) {
  int i;
  FUNC3 (stderr, "[%6.2f] Add all patterns... [free bytes = %d] ", FUNC1(), FUNC2());
  for (i = 0; i < N; i++) {
    antispam_pattern_t p;
    p.id = _id[i];
    p.ip = _ip[i];
    p.flags = _flag[i];
    p.uahash = _uahash[i];
    FUNC0 (p, str[i], FALSE);
  }
  FUNC3 (stderr, "OK [free bytes = %f]\n", FUNC2());
  FUNC4();
}