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
struct jv_parser {scalar_t__ stacklen; void* output; void* next; void* path; } ;
typedef  void* jv ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (void*) ; 
 void* FUNC4 () ; 
 scalar_t__ FUNC5 (void*) ; 

__attribute__((used)) static int FUNC6(struct jv_parser* p, jv* out) {
  if (p->stacklen == 0 && FUNC5(p->next)) {
    *out = FUNC0(FUNC3(p->path),p->next);
    p->next = FUNC4();
    return 1;
  } else if (FUNC5(p->output)) {
    if (FUNC1(FUNC3(p->output)) > 2) {
      // At end of an array or object, necessitating one more output by
      // which to indicate this
      *out = FUNC2(FUNC3(p->output), 0, 2);
      p->output = FUNC2(p->output, 0, 1);      // arrange one more output
    } else {
      // No further processing needed
      *out = p->output;
      p->output = FUNC4();
    }
    return 1;
  } else {
    return 0;
  }
}