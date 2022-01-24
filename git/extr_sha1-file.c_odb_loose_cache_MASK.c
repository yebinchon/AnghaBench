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
struct strbuf {int dummy; } ;
struct oid_array {int dummy; } ;
struct object_id {int* hash; } ;
struct object_directory {int* loose_objects_subdir_seen; struct oid_array* loose_objects_cache; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  append_loose_object ; 
 int /*<<< orphan*/  FUNC2 (int,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct oid_array*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

struct oid_array *FUNC5(struct object_directory *odb,
				  const struct object_id *oid)
{
	int subdir_nr = oid->hash[0];
	struct strbuf buf = STRBUF_INIT;

	if (subdir_nr < 0 ||
	    subdir_nr >= FUNC0(odb->loose_objects_subdir_seen))
		FUNC1("subdir_nr out of range");

	if (odb->loose_objects_subdir_seen[subdir_nr])
		return &odb->loose_objects_cache[subdir_nr];

	FUNC3(&buf, odb->path);
	FUNC2(subdir_nr, &buf,
				    append_loose_object,
				    NULL, NULL,
				    &odb->loose_objects_cache[subdir_nr]);
	odb->loose_objects_subdir_seen[subdir_nr] = 1;
	FUNC4(&buf);
	return &odb->loose_objects_cache[subdir_nr];
}