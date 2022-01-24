#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct list {int dummy; } ;
struct jit {int /*<<< orphan*/  mem; } ;
typedef  int /*<<< orphan*/  page_t ;
struct TYPE_2__ {struct list* blocks; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct list *FUNC1(struct jit *jit, page_t page, int i) {
    return &FUNC0(jit->mem, page)->blocks[i];
}