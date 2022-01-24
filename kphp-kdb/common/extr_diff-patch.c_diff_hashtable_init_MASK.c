#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; unsigned char* a; void* next; void* e; void* H; } ;
typedef  TYPE_1__ diff_hashtable_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,unsigned int) ; 
 void* FUNC2 (unsigned int) ; 

__attribute__((used)) static void FUNC3 (diff_hashtable_t *T, unsigned char *a, int N) {
  T->size = FUNC0 (N);
  T->a = a;
  unsigned sz = T->size * sizeof (T->H[0]);
  T->H = FUNC2 (sz);
  FUNC1 (T->H, 0xff, sz);
  sz = 4 * T->size;
  T->e = FUNC2 (sz);
  FUNC1 (T->e, 0xff, sz);
  sz = 4 * N;
  T->next = FUNC2 (sz);
  FUNC1 (T->next, 0xff, sz);
}