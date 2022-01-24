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
struct mem {int dummy; } ;
struct jit {int /*<<< orphan*/  lock; int /*<<< orphan*/  jetsam; struct mem* mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  JIT_INITIAL_HASH_SIZE ; 
 struct jit* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct jit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct jit *FUNC4(struct mem *mem) {
    struct jit *jit = FUNC0(1, sizeof(struct jit));
    jit->mem = mem;
    FUNC1(jit, JIT_INITIAL_HASH_SIZE);
    FUNC2(&jit->jetsam);
    FUNC3(&jit->lock);
    return jit;
}