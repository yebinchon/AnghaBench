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
struct object_id {int dummy; } ;
struct object_array {int dummy; } ;
struct object {int flags; } ;

/* Variables and functions */
 int WANTED ; 
 int /*<<< orphan*/  FUNC0 (struct object*,int /*<<< orphan*/ *,struct object_array*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 char const* FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct packet_writer*,char*,char const*) ; 
 struct object* FUNC5 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC6 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC7(struct packet_writer *writer, const char *line,
		      struct object_array *want_obj)
{
	const char *arg;
	if (FUNC6(line, "want ", &arg)) {
		struct object_id oid;
		struct object *o;

		if (FUNC2(arg, &oid))
			FUNC1("git upload-pack: protocol error, "
			    "expected to get oid, not '%s'", line);

		o = FUNC5(the_repository, &oid);
		if (!o) {
			FUNC4(writer,
					    "upload-pack: not our ref %s",
					    FUNC3(&oid));
			FUNC1("git upload-pack: not our ref %s",
			    FUNC3(&oid));
		}

		if (!(o->flags & WANTED)) {
			o->flags |= WANTED;
			FUNC0(o, NULL, want_obj);
		}

		return 1;
	}

	return 0;
}