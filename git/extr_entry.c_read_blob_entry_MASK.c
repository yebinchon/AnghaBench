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
struct cache_entry {int /*<<< orphan*/  oid; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int*,unsigned long*) ; 

__attribute__((used)) static void *FUNC2(const struct cache_entry *ce, unsigned long *size)
{
	enum object_type type;
	void *blob_data = FUNC1(&ce->oid, &type, size);

	if (blob_data) {
		if (type == OBJ_BLOB)
			return blob_data;
		FUNC0(blob_data);
	}
	return NULL;
}