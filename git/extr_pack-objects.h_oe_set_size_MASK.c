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
struct packing_data {unsigned long oe_size_limit; } ;
struct object_entry {unsigned long size_; int size_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned long FUNC1 (struct packing_data*,struct object_entry*) ; 

__attribute__((used)) static inline void FUNC2(struct packing_data *pack,
			       struct object_entry *e,
			       unsigned long size)
{
	if (size < pack->oe_size_limit) {
		e->size_ = size;
		e->size_valid = 1;
	} else {
		e->size_valid = 0;
		if (FUNC1(pack, e) != size)
			FUNC0("'size' is supposed to be the object size!");
	}
}