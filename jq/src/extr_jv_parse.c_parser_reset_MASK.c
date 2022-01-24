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
struct jv_parser {int flags; int stackpos; int /*<<< orphan*/  st; scalar_t__ tokenpos; void** stack; void* next; void* output; int /*<<< orphan*/  last_seen; scalar_t__ stacklen; void* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  JV_LAST_NONE ; 
 int /*<<< orphan*/  JV_PARSER_NORMAL ; 
 int JV_PARSE_STREAMING ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct jv_parser* p) {
  if ((p->flags & JV_PARSE_STREAMING)) {
    FUNC1(p->path);
    p->path = FUNC0();
    p->stacklen = 0;
  }
  p->last_seen = JV_LAST_NONE;
  FUNC1(p->output);
  p->output = FUNC2();
  FUNC1(p->next);
  p->next = FUNC2();
  for (int i=0; i<p->stackpos; i++)
    FUNC1(p->stack[i]);
  p->stackpos = 0;
  p->tokenpos = 0;
  p->st = JV_PARSER_NORMAL;
}