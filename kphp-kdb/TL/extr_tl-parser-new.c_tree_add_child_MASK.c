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
struct tree {int nc; int size; struct tree** c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tree**) ; 
 int /*<<< orphan*/  FUNC1 (void**,struct tree**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tree**,int) ; 
 void** FUNC3 (int) ; 

void FUNC4 (struct tree *P, struct tree *C) {
  if (P->nc == P->size) {
    void **t = FUNC3 (sizeof (void *) * (++P->size));
    FUNC1 (t, P->c, sizeof (void *) * (P->size - 1));
    if (P->c) {
      FUNC2 (P->c, sizeof (void *) * (P->size - 1));
    }
    P->c = (void *)t;
    FUNC0 (P->c);
  }
  P->c[P->nc ++] = C;
}