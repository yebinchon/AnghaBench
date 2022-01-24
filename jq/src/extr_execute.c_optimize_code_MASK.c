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
typedef  int uint16_t ;
struct bytecode {int* code; int codelen; } ;

/* Variables and functions */
#define  CALL_JQ 128 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (int*) ; 

__attribute__((used)) static struct bytecode *FUNC2(struct bytecode *bc) {
  uint16_t *pc = bc->code;
  // FIXME: Don't mutate bc->code...
  while (pc < bc->code + bc->codelen) {
    switch (*pc) {
    case CALL_JQ:
      *pc = FUNC1(pc);
      break;

    // Other bytecode optimizations here.  A peephole optimizer would
    // fit right in.
    default: break;
    }
    pc += FUNC0(pc);
  }
  return bc;
}