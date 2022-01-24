#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pattern_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ antispam_pattern_t ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (TYPE_1__,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  id_to_pattern ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC3 (antispam_pattern_t p, const char *s, bool replace) {
  pattern_t *pattern = FUNC2 (id_to_pattern, p.id);
  if (pattern != 0) {
    if (!replace) {
      return FALSE;
    }
    FUNC1 (p.id, pattern);
  }
  return FUNC0 (p, s);
}