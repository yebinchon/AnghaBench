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
struct raw_object_store {struct object_directory* odb; } ;
struct object_directory {struct object_directory* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_directory*) ; 

__attribute__((used)) static void FUNC1(struct raw_object_store *o)
{
	while (o->odb) {
		struct object_directory *next;

		next = o->odb->next;
		FUNC0(o->odb);
		o->odb = next;
	}
}