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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* buff ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int mode ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 () ; 
 unsigned int FUNC9 () ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int*,unsigned int*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  root ; 
 int rules ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int total ; 
 int verbosity ; 

void FUNC14 (void) {
  while (1) {
    if (!FUNC4 (buff, 1000000, stdin)) {
      break;
    }
    FUNC6 ();
    if (*buff == 10 || *buff == 13 || *buff == '#') {
      continue;
    }
    unsigned start_ip, end_ip, country, region;
    if (!mode) {
      start_ip = FUNC10 ();
      FUNC2 (!FUNC3 ());
      end_ip = FUNC10 ();
      FUNC2 (!FUNC3 ());
      FUNC2 (start_ip == FUNC9 ());
      FUNC2 (!FUNC3 ());
      FUNC2 (end_ip == FUNC9 ());
      FUNC2 (!FUNC3 ());
      country = FUNC8 ();
      FUNC2 (country);
      FUNC2 (!FUNC3 ());
      FUNC2 (FUNC12 ());
      FUNC2 (FUNC3 ());
    } else if (mode == 1) {
      FUNC11 (&start_ip, &end_ip);
      FUNC2 (!FUNC3 ());
      country = FUNC9 ();
      FUNC2 (FUNC3 ());
    } else if (mode == 2) {
      start_ip = FUNC10 ();
      FUNC2 (!FUNC3 ());
      end_ip = FUNC10 ();
      FUNC2 (!FUNC3 ());
      country = FUNC8 ();
      FUNC2 (country);
      FUNC2 (!FUNC3 ());
      region = FUNC8 ();
      FUNC2 (!FUNC3 ());
      FUNC2 (FUNC13 () == 6);
      FUNC2 (FUNC3 ());
      country = (country << 16) + region;
    } else {
      FUNC2 (0);
    }
    if (verbosity >= 3) {
      #define IP(a) (a >> 24) & 0xff, (a >> 16) & 0xff, (a >> 8) & 0xff, (a >> 0) & 0xff
      FUNC5 (stderr, "add: start_ip = %u.%u.%u.%u, end_ip = %u.%u.%u.%u, color = %d\n", IP(start_ip), IP(end_ip), country);
    }
    FUNC1 (&root, start_ip, end_ip, country, end_ip - start_ip);
    rules ++;
  }
  if (verbosity) {
    FUNC5 (stderr, "total %d rules\n", rules);
    FUNC5 (stderr, "total %d vertices\n", total);
  }
  FUNC7 (&root);
}