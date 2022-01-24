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
struct bytecode {int nsubfunctions; struct bytecode** subfunctions; } ;

/* Variables and functions */
 struct bytecode* FUNC0 (struct bytecode*) ; 

__attribute__((used)) static struct bytecode *FUNC1(struct bytecode *bc) {
  for (int i=0; i<bc->nsubfunctions; i++) {
    bc->subfunctions[i] = FUNC1(bc->subfunctions[i]);
  }
  return FUNC0(bc);
}