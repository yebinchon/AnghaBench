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
struct pack_backend {int dummy; } ;
struct git_pack_entry {int /*<<< orphan*/  offset; int /*<<< orphan*/  p; } ;
struct git_odb_backend {int dummy; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct git_pack_entry*,struct pack_backend*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(
	size_t *len_p, git_object_t *type_p,
	struct git_odb_backend *backend, const git_oid *oid)
{
	struct git_pack_entry e;
	int error;

	FUNC0(len_p && type_p && backend && oid);

	if ((error = FUNC2(&e, (struct pack_backend *)backend, oid)) < 0)
		return error;

	return FUNC1(len_p, type_p, e.p, e.offset);
}