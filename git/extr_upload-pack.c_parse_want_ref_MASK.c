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
struct string_list_item {int /*<<< orphan*/  util; } ;
struct string_list {int dummy; } ;
struct packet_writer {int dummy; } ;
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {int flags; } ;

/* Variables and functions */
 int WANTED ; 
 int /*<<< orphan*/  FUNC0 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_writer*,char*,char const*) ; 
 struct object* FUNC4 (struct object_id*,char const*) ; 
 scalar_t__ FUNC5 (char const*,struct object_id*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 struct string_list_item* FUNC7 (struct string_list*,char const*) ; 

__attribute__((used)) static int FUNC8(struct packet_writer *writer, const char *line,
			  struct string_list *wanted_refs,
			  struct object_array *want_obj)
{
	const char *arg;
	if (FUNC6(line, "want-ref ", &arg)) {
		struct object_id oid;
		struct string_list_item *item;
		struct object *o;

		if (FUNC5(arg, &oid)) {
			FUNC3(writer, "unknown ref %s", arg);
			FUNC1("unknown ref %s", arg);
		}

		item = FUNC7(wanted_refs, arg);
		item->util = FUNC2(&oid);

		o = FUNC4(&oid, arg);
		if (!(o->flags & WANTED)) {
			o->flags |= WANTED;
			FUNC0(o, NULL, want_obj);
		}

		return 1;
	}

	return 0;
}