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
struct TYPE_4__ {struct TYPE_4__* status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__** rerere_dir ; 
 int rerere_dir_alloc ; 
 int rerere_dir_nr ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;
	for (i = 0; i < rerere_dir_nr; i++) {
		FUNC1(rerere_dir[i]->status);
		FUNC1(rerere_dir[i]);
	}
	FUNC0(rerere_dir);
	rerere_dir_nr = rerere_dir_alloc = 0;
}