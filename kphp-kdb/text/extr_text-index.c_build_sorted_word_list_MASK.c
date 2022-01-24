#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ freq; struct TYPE_6__* next; } ;
typedef  TYPE_1__ word_t ;
struct TYPE_7__ {TYPE_1__** A; } ;
typedef  TYPE_2__ word_hash_t ;

/* Variables and functions */
 int PRIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,long long,long long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,long) ; 

void FUNC3 (word_t *List[], word_hash_t *Set, long N) {
  int i;
  word_t **cur = List, **last = cur + N, *ptr;
  for (i = 0; i < PRIME; i++) {
    for (ptr = Set->A[i]; ptr; ptr = ptr->next) {
      if (ptr->freq > 0) {
        *cur++ = ptr;
        FUNC0 (cur <= last);
      }
    }
  }
  if (cur != last) {
    FUNC1 (stderr, "expected %lld words, found %lld\n", (long long) N, (long long) (last - List));
  }
  FUNC0 (cur == last);
  FUNC2 (List, N-1);
}