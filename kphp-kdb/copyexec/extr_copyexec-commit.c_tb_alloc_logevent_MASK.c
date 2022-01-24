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
struct transaction_buffer {scalar_t__ p; scalar_t__ size; void* buff; } ;
struct lev_generic {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  lev_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void *FUNC4 (struct transaction_buffer *B, lev_type_t type, long long size) {
  size = (size + 3) & -4;
  if (B->p + size > B->size) {
    FUNC3 (3, "B->p + size = %lld, B->size = %lld\n", B->p + size, B->size);
    FUNC1 ("Transaction buffer too small (%lld), try increase it with -M command line switch.\n", B->size);
    FUNC0 (1);
  }
  void *ptr = B->buff + B->p;
  B->p += size;
  FUNC2 (ptr, 0, size);
  struct lev_generic *E = ptr;
  E->type = type;
  return ptr;
}