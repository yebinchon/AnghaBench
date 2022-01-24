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
struct TYPE_5__ {int /*<<< orphan*/  content; } ;
typedef  TYPE_1__ fake_object ;
struct TYPE_6__ {int /*<<< orphan*/  read_header_calls; } ;
typedef  TYPE_2__ fake_backend ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int FUNC0 (TYPE_1__ const**,TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
	size_t *len_p, git_object_t *type_p,
	git_odb_backend *backend, const git_oid *oid)
{
	const fake_object *obj;
	fake_backend *fake;
	int error;

	fake = (fake_backend *)backend;

	fake->read_header_calls++;

	if ((error = FUNC0(&obj, fake, oid, GIT_OID_HEXSZ)) < 0)
		return error;

	*len_p = FUNC1(obj->content);
	*type_p = GIT_OBJECT_BLOB;

	return 0;
}