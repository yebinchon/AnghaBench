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
struct lev_copyexec_result_enable {int /*<<< orphan*/  random_tag; } ;
struct lev_copyexec_result_data {int dummy; } ;
struct lev_copyexec_result_connect {int hostname_length; } ;

/* Variables and functions */
#define  LEV_COPYEXEC_RESULT_CONNECT 138 
#define  LEV_COPYEXEC_RESULT_DATA 137 
#define  LEV_COPYEXEC_RESULT_DISABLE 136 
#define  LEV_COPYEXEC_RESULT_ENABLE 135 
#define  LEV_CRC32 134 
#define  LEV_NOOP 133 
#define  LEV_ROTATE_FROM 132 
#define  LEV_ROTATE_TO 131 
#define  LEV_START 130 
#define  LEV_TAG 129 
#define  LEV_TIMESTAMP 128 
 int /*<<< orphan*/  FUNC0 (struct lev_start*) ; 
 int FUNC1 (struct lev_generic*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct lev_copyexec_result_connect*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct lev_copyexec_result_data*) ; 

int FUNC7 (struct lev_generic *E, int size) {
  int s;
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
    case LEV_TAG:
      return FUNC1 (E, size);
    case LEV_COPYEXEC_RESULT_CONNECT:
      s = sizeof (struct lev_copyexec_result_connect);
      if (size < s) { return -2; }
      s += ((struct lev_copyexec_result_connect *) E)->hostname_length;
      if (size < s) { return -2; }
      FUNC4 ((struct lev_copyexec_result_connect *) E);
      return s;
    case LEV_COPYEXEC_RESULT_DATA:
      s = sizeof (struct lev_copyexec_result_data);
      if (size < s) { return -2; }
      FUNC6 (NULL, (struct lev_copyexec_result_data *) E);
      return s;
    case LEV_COPYEXEC_RESULT_DISABLE:
    case LEV_COPYEXEC_RESULT_ENABLE:
      s = sizeof (struct lev_copyexec_result_enable);
      if (size < s) { return -2; }
      FUNC5 (((struct lev_copyexec_result_enable *) E)->random_tag, (E->type == LEV_COPYEXEC_RESULT_ENABLE) ? 1 : 0 );
      return s;
  }

  FUNC2 ("unknown log event type %08x at position %lld\n", E->type, FUNC3());

  return -3;

}