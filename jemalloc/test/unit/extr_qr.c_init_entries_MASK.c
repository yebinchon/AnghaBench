#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char id; } ;
typedef  TYPE_1__ ring_t ;

/* Variables and functions */
 unsigned int NENTRIES ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(ring_t *entries) {
	unsigned i;

	for (i = 0; i < NENTRIES; i++) {
		FUNC0(&entries[i], link);
		entries[i].id = 'a' + i;
	}
}