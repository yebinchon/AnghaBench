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
struct packet_writer {int dummy; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct TYPE_2__ {struct object object; } ;

/* Variables and functions */
 int CLIENT_SHALLOW ; 
 int NOT_SHALLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct packet_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shallow_nr ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC3(struct packet_writer *writer,
			 struct commit_list *result)
{
	while (result) {
		struct object *object = &result->item->object;
		if (!(object->flags & (CLIENT_SHALLOW|NOT_SHALLOW))) {
			FUNC1(writer, "shallow %s",
					    FUNC0(&object->oid));
			FUNC2(the_repository, &object->oid);
			shallow_nr++;
		}
		result = result->next;
	}
}