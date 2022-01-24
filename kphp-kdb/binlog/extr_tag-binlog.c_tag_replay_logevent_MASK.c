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
struct lev_generic {int type; int b; } ;

/* Variables and functions */
#define  LEV_START 129 
#define  LEV_TAG 128 
 char act ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_tag ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lev_generic*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int start ; 

int FUNC7 (struct lev_generic *E, int size) {
  int s;
  switch (E->type) {
    case LEV_START:
      FUNC0 (!start && !FUNC5 ());
      if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
      s = 24 + ((E->b + 3) & -4);
      if (size < s) { return -2; }
      start = 1;
      return s;
    case LEV_TAG:
      s = FUNC2 (E, size);
      if (act == 'i') {
        char output[33];
        FUNC1 (output, binlog_tag);
        FUNC6 ("%s\n", output);
        FUNC3 (0);
      }
      FUNC4 ("ERROR: binlog has already a tag.\n");
      return -1;
  }
  FUNC4 ("unexpected log event type %08x at position %lld\n", E->type, FUNC5 ());
  return -1;
}