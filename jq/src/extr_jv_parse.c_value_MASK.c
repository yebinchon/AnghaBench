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
struct jv_parser {int flags; scalar_t__ last_seen; scalar_t__ stacklen; int /*<<< orphan*/  next; } ;
typedef  char* pfunc ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_LAST_NONE ; 
 scalar_t__ JV_LAST_VALUE ; 
 int JV_PARSE_STREAMING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pfunc FUNC2(struct jv_parser* p, jv val) {
  if ((p->flags & JV_PARSE_STREAMING)) {
    if (FUNC1(p->next) || p->last_seen == JV_LAST_VALUE) {
      FUNC0(val);
      return "Expected separator between values";
    }
    if (p->stacklen > 0)
      p->last_seen = JV_LAST_VALUE;
    else
      p->last_seen = JV_LAST_NONE;
  } else {
    if (FUNC1(p->next)) {
      FUNC0(val);
      return "Expected separator between values";
    }
  }
  FUNC0(p->next);
  p->next = val;
  return 0;
}