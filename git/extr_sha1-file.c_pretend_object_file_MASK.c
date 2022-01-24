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
struct object_id {int dummy; } ;
struct cached_object {unsigned long size; int type; int /*<<< orphan*/  oid; int /*<<< orphan*/  buf; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cached_object*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_object_alloc ; 
 scalar_t__ cached_object_nr ; 
 struct cached_object* cached_objects ; 
 scalar_t__ FUNC1 (struct object_id*) ; 
 scalar_t__ FUNC2 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

int FUNC8(void *buf, unsigned long len, enum object_type type,
			struct object_id *oid)
{
	struct cached_object *co;

	FUNC3(buf, len, FUNC6(type), oid);
	if (FUNC2(oid) || FUNC1(oid))
		return 0;
	FUNC0(cached_objects, cached_object_nr + 1, cached_object_alloc);
	co = &cached_objects[cached_object_nr++];
	co->size = len;
	co->type = type;
	co->buf = FUNC7(len);
	FUNC4(co->buf, buf, len);
	FUNC5(&co->oid, oid);
	return 0;
}