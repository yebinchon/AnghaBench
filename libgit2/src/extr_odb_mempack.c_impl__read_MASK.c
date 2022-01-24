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
struct memory_packer_db {int /*<<< orphan*/  objects; } ;
struct memobject {size_t len; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 struct memobject* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC4(void **buffer_p, size_t *len_p, git_object_t *type_p, git_odb_backend *backend, const git_oid *oid)
{
	struct memory_packer_db *db = (struct memory_packer_db *)backend;
	struct memobject *obj;

	if ((obj = FUNC2(db->objects, oid)) == NULL)
		return GIT_ENOTFOUND;

	*len_p = obj->len;
	*type_p = obj->type;
	*buffer_p = FUNC1(obj->len);
	FUNC0(*buffer_p);

	FUNC3(*buffer_p, obj->data, obj->len);
	return 0;
}