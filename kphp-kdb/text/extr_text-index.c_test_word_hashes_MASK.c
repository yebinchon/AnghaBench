#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; struct TYPE_3__* next; } ;
typedef  TYPE_1__ word_t ;
struct TYPE_4__ {TYPE_1__** A; } ;

/* Variables and functions */
 int PRIME ; 
 TYPE_2__ Words ; 
 int FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dyn_cur ; 
 char* dyn_top ; 
 long long FUNC3 (unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long long,double,long long,...) ; 
 int hash_conflicts ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long*,int) ; 

void FUNC6 (void) {
  int i, j, N;
  word_t *ptr;
  unsigned long long *A, *Ae;
  long long tot_pfx_size = 0, opt_pfx_size;

  Ae = A = (unsigned long long *) (dyn_cur + 8);

  for (i = 0; i < PRIME; i++) {
    for (ptr = Words.A[i]; ptr; ptr = ptr->next) {
      FUNC1 ((char *) Ae + 16 <= dyn_top);
      *Ae++ = FUNC2 (ptr->str, ptr->len);
    }
  }

  N = Ae - A;

  if (!N) {
    return;
  }

  FUNC5 (A, N-1);

  for (i = 1, j = 1; i < N; i++) {
    if (A[i] != A[i-1]) {
      A[j++] = A[i];
    }
  }

  hash_conflicts = N - j;

  FUNC4 (stderr, "%lld distinct words, %f distinct word hashes (%lld conflicts)\n", N, j, hash_conflicts);

  N = j;

  A[-1] = -1LL;
  A[N] = 0;

  for (i = 0; i < N; i++) {
    unsigned long long u = A[i] ^ A[i-1], v = A[i] ^ A[i+1];
    int pfx_size = FUNC0 (u < v ? u : v) + 1;
    tot_pfx_size += pfx_size;
  }

  opt_pfx_size = FUNC3 (A, N);

  FUNC4 (stderr, "total word hash prefix size %lld, %.3f average; optimal total size %lld, %.3f average\n", tot_pfx_size, (double) tot_pfx_size / N, opt_pfx_size, (double) opt_pfx_size / N);
}