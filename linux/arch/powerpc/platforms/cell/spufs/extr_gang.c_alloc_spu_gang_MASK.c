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
struct spu_gang {int /*<<< orphan*/  aff_list_head; int /*<<< orphan*/  list; int /*<<< orphan*/  aff_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct spu_gang* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct spu_gang *FUNC4(void)
{
	struct spu_gang *gang;

	gang = FUNC2(sizeof *gang, GFP_KERNEL);
	if (!gang)
		goto out;

	FUNC1(&gang->kref);
	FUNC3(&gang->mutex);
	FUNC3(&gang->aff_mutex);
	FUNC0(&gang->list);
	FUNC0(&gang->aff_list_head);

out:
	return gang;
}