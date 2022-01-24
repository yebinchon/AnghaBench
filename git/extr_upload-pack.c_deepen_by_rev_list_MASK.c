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
struct packet_writer {int dummy; } ;
struct object_array {int dummy; } ;
struct commit_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NOT_SHALLOW ; 
 int /*<<< orphan*/  SHALLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct commit_list*) ; 
 struct commit_list* FUNC2 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_writer*,struct commit_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct packet_writer*,struct object_array*,struct object_array*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC5(struct packet_writer *writer, int ac,
			       const char **av,
			       struct object_array *shallows,
			       struct object_array *want_obj)
{
	struct commit_list *result;

	FUNC0(the_repository);
	result = FUNC2(ac, av, SHALLOW, NOT_SHALLOW);
	FUNC3(writer, result);
	FUNC1(result);
	FUNC4(writer, shallows, want_obj);
}