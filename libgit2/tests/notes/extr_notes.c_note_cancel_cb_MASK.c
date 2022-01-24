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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(
	const git_oid *blob_id, const git_oid *annotated_obj_id, void *payload)
{
	unsigned int *count = (unsigned int *)payload;

	FUNC0(blob_id);
	FUNC0(annotated_obj_id);

	(*count)++;

	return (*count > 2);
}