#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;
struct TYPE_5__ {int /*<<< orphan*/  content; int /*<<< orphan*/  oid; } ;
typedef  TYPE_1__ fake_object ;
struct TYPE_6__ {int /*<<< orphan*/  read_prefix_calls; } ;
typedef  TYPE_2__ fake_backend ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const**,TYPE_2__*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	git_oid *out_oid, void **buffer_p, size_t *len_p, git_object_t *type_p,
	git_odb_backend *backend, const git_oid *short_oid, size_t len)
{
	const fake_object *obj;
	fake_backend *fake;
	int error;

	fake = (fake_backend *)backend;

	fake->read_prefix_calls++;

	if ((error = FUNC2(&obj, fake, short_oid, len)) < 0)
		return error;

	FUNC1(out_oid, obj->oid);
	*len_p = FUNC3(obj->content);
	*buffer_p = FUNC0(obj->content);
	*type_p = GIT_OBJECT_BLOB;

	return 0;
}