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
struct lev_start {int dummy; } ;
struct lev_generic {int type; int b; } ;
struct lev_copyexec_result_enable {int dummy; } ;
struct lev_copyexec_result_data {int dummy; } ;
struct lev_copyexec_result_connect {int hostname_length; } ;

/* Variables and functions */
#define  LEV_COPYEXEC_RESULT_CONNECT 137 
#define  LEV_COPYEXEC_RESULT_DATA 136 
#define  LEV_COPYEXEC_RESULT_DISABLE 135 
#define  LEV_COPYEXEC_RESULT_ENABLE 134 
#define  LEV_CRC32 133 
#define  LEV_NOOP 132 
#define  LEV_ROTATE_FROM 131 
#define  LEV_ROTATE_TO 130 
#define  LEV_START 129 
#define  LEV_TIMESTAMP 128 
 int /*<<< orphan*/  FUNC0 (struct lev_start*) ; 
 int FUNC1 (struct lev_generic*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lev_copyexec_result_connect*) ; 
 int /*<<< orphan*/  FUNC3 (struct lev_copyexec_result_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct lev_copyexec_result_enable*) ; 
 scalar_t__ end_time ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  out ; 

int FUNC10 (struct lev_generic *E, int size) {
  int s;
  if (now > end_time) {
    FUNC7 (out);
    FUNC6 (out);
    FUNC5 (0);
  }
  switch (E->type) {
    case LEV_START:
      if (size < 24 || E->b < 0 || E->b > 4096) { return -2; }
      s = 24 + ((E->b + 3) & -4);
      if (size < s) { return -2; }
      return FUNC0 ((struct lev_start *) E) >= 0 ? s : -1;
    case LEV_NOOP:
    case LEV_TIMESTAMP:
    case LEV_CRC32:
    case LEV_ROTATE_FROM:
    case LEV_ROTATE_TO:
      return FUNC1 (E, size);
    case LEV_COPYEXEC_RESULT_CONNECT:
      s = sizeof (struct lev_copyexec_result_connect);
      if (size < s) { return -2; }
      s += ((struct lev_copyexec_result_connect *) E)->hostname_length;
      if (size < s) { return -2; }
      FUNC2 ((struct lev_copyexec_result_connect *) E);
      return s;
    case LEV_COPYEXEC_RESULT_DATA:
      s = sizeof (struct lev_copyexec_result_data);
      if (size < s) { return -2; }
      FUNC3 ( (struct lev_copyexec_result_data *) E);
      return s;
    case LEV_COPYEXEC_RESULT_DISABLE:
    case LEV_COPYEXEC_RESULT_ENABLE:
      s = sizeof (struct lev_copyexec_result_enable);
      if (size < s) { return -2; }
      FUNC4 ((struct lev_copyexec_result_enable *) E);
      return s;
  }

  FUNC8 ("unknown log event type %08x at position %lld\n", E->type, FUNC9 ());

  return -3;

}