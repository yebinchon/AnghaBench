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
struct upload_pack_data {int /*<<< orphan*/  deepen_not; int /*<<< orphan*/  shallows; int /*<<< orphan*/  haves; int /*<<< orphan*/  wanted_refs; int /*<<< orphan*/  wants; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct upload_pack_data *data)
{
	FUNC0(&data->wants);
	FUNC2(&data->wanted_refs, 1);
	FUNC1(&data->haves);
	FUNC0(&data->shallows);
	FUNC2(&data->deepen_not, 0);
}