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
struct targ_gather_extra {scalar_t__ magic; int extra_start; int extra_end; int /*<<< orphan*/  slice_limit; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ TARG_GATHER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3 (char *buff, char *key, int key_len, void *E) {
  struct targ_gather_extra *extra = E;
  FUNC0 (extra->magic == TARG_GATHER_MAGIC);
  int l = 0;
  FUNC1 (buff + l, key, extra->extra_start);
  l += extra->extra_start;
  l += FUNC2 (buff + l, extra->flags, extra->slice_limit);
  FUNC1 (buff + l, key + extra->extra_end, key_len - extra->extra_end);
  l += key_len - extra->extra_end;
  return l;
}